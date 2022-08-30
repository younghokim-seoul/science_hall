import 'dart:async';
import 'dart:core';

import 'package:arc/arc.dart';
import 'package:arc/arc_subject.dart';
import 'package:flutter_beacon/flutter_beacon.dart';
import 'package:science_hall/data/datasource/local/save_beacon_provider.dart';
import 'package:science_hall/data/datasource/local/save_user_provider.dart';
import 'package:science_hall/di_container.dart';
import 'package:science_hall/domain/repository/science_repository.dart';
import 'package:science_hall/util/dev_log.dart';

class BeaconManager {
  final _scienceRepository = it<ScienceRepository>();

  var bluetoothState = BluetoothState.stateOff;
  var authorizationStatus = AuthorizationStatus.notDetermined;
  var locationService = false;

  StreamSubscription<RangingResult>? _subscription;

  final beaconState = ArcSubject<RangingResult>();

  bool get bluetoothEnabled => bluetoothState.value.toString() == BluetoothState.stateOn.toString();

  bool get authorizationStatusOk =>
      authorizationStatus.value.toString() == AuthorizationStatus.allowed.toString() ||
      authorizationStatus.value.toString() == AuthorizationStatus.always.toString();

  bool get locationServiceEnabled => locationService;

  final regions = <Region>[
    Region(
        identifier: 'Bluno',
        proximityUUID: 'e2c56db5-dffb-48d2-b060-d0f5a71096e0'),
    Region(
        identifier: 'Bluno1',
        proximityUUID: '5B52B68D-C273-4205-03BB-DDF62A9134BE'),
    Region(
        identifier: 'Bluno2',
        proximityUUID: '4D8261F3-57BF-F2B8-0261-A5C381287DF9'),
    Region(
        identifier: 'Bluno3',
        proximityUUID: '056852CC-5974-1291-C374-0953C2DEBD21'),
    Region(
        identifier: 'Bluno4',
        proximityUUID: '5B35932A-9E21-DFB4-8CE9-F65CBC0A98C1'),
    Region(
        identifier: 'Bluno5',
        proximityUUID: 'ECABB2AB-9201-0A51-97BF-C3D62BFE32DF'),
    Region(
        identifier: 'Bluno6',
        proximityUUID: 'A54B96F3-C095-BA60-0F26-F4A9B5045A7B'),
    Region(
        identifier: 'Bluno7',
        proximityUUID: '7E4834C0-F223-234F-D023-63CA7782F0E7'),
    Region(
        identifier: 'Bluno8',
        proximityUUID: 'BE2F1E22-C30E-8ACB-B7BA-92D39F26439F'),
    Region(
        identifier: 'Bluno9',
        proximityUUID: 'FF671CDE-7896-69D0-3A8E-0235093B440F'),
    Region(
        identifier: 'Bluno10',
        proximityUUID: '6FF7E5C3-6C5C-5775-8015-A72ADC24D541'),
    Region(
        identifier: 'Bluno11',
        proximityUUID: 'CECD03BD-AFE7-239E-BB1A-C6D07FB1B51F'),
    Region(
        identifier: 'Bluno12',
        proximityUUID: '44A9B6BA-99B9-E684-2E60-D5DFBE14F67B'),
    Region(
        identifier: 'Bluno13',
        proximityUUID: '75C216E2-36FD-8ACB-6BD0-75DF8378FD92'),
    Region(
        identifier: 'Bluno14',
        proximityUUID: '2C682F04-12E3-F67C-2D14-2380D153A3C2'),
    Region(
        identifier: 'Bluno15',
        proximityUUID: 'C0FD1183-8CA3-4A0E-27E0-059127EFA23A'),
    Region(
        identifier: 'Bluno16',
        proximityUUID: 'BEF4FA04-445C-97B9-A0CC-8C12ACE53988'),
    Region(
        identifier: 'Bluno17',
        proximityUUID: 'BBE66A0F-28D1-BEF9-0B55-0572687C6FCA'),
  ];

  Future<void> initScanBeacon() async => await flutterBeacon.initializeScanning;

  void check() async {
    await initScanBeacon();
    bluetoothState = await flutterBeacon.bluetoothState;
    authorizationStatus = await flutterBeacon.authorizationStatus;
    locationService = await flutterBeacon.checkLocationServicesIfEnabled;


    if(!bluetoothEnabled || !authorizationStatusOk || !locationServiceEnabled){
      Log.d(":::bluetoothEnabled $bluetoothEnabled authorizationStatusOk $authorizationStatusOk locationServiceEnabled $locationServiceEnabled");
      return;
    }
    await startScan();
  }

  Future<void> startScan() async {
    Log.d("::::SCANING....");
    if (_subscription != null) {
      Log.d("::::이미 비콘 동작중.......");
      return;
    }

    Log.d("::::regions size " + regions.length.toString());
    _subscription =
        flutterBeacon.ranging(regions).listen((RangingResult result) async {
      if (!result.beacons.isNullOrEmpty) {
        int rssi = result.beacons.first.rssi;
        if (rssi.abs() >= 35 &&
            rssi.abs() <= 99 &&
            result.beacons.length == 1) {
          String latestUUID = await getBeaconUUID();
          if (latestUUID != result.beacons.first.proximityUUID) {
            //가장 최근 uuid와 감지된 비콘 uuid가 다르다면?
            // Log.d("가장 최근 uuid와 감지된 비콘 uuid가 다르다면?");
            if (!result.beacons.first.proximityUUID.isNullOrEmpty) {
              //비콘에 포함된 proximityUUID가 null이 아니라면?
              // Log.d("비콘에 포함된 proximityUUID가 null이 아니라면? => 비콘 정보저장 및 비콘 정보호출");
              await saveBeaconUUID(result.beacons.first.proximityUUID);
              await fetchBeacon();
              await saveUserLog(result.beacons.first.proximityUUID);
              beaconState.val = result;
            }
          }
        }
      }
    });
  }

  pauseScanBeacon() async {
    Log.d('pauseScanBeacon');
    _subscription?.pause();
    await _subscription?.cancel();
    _subscription = null;
  }

  Future<void> _dispose() async {
    Log.d('dispose');
    await beaconState.close();
    await _subscription?.cancel();
    _subscription = null;
  }

  Future<void> release() async {
    Log.d(":::릴리즈시작...");
    await _dispose();
    Log.d(":::릴리즈종료..");
  }

  Future<void> fetchBeacon() async {
    try {
      String macUuid = await getBeaconUUID();
      Map<String, dynamic> param = {};
      param['uuid'] = macUuid;
      final response = await _scienceRepository.fetchExhibition(param);
      await saveLatestExhibition(response);
    } catch (e, print) {
      Log.d(":::[fetchBeacon error]  " + print.toString());
    }
  }

  Future<void> saveUserLog(String uuid) async {
    try {
      var userInfo = await getUserInfo();
      if (userInfo != null) {
        Log.d("userInfo " + userInfo.toString());
        Map<String, dynamic> param = {};
        param['sex'] = userInfo.sex;
        param['age_group'] = userInfo.age_group;
        param['mac_address'] = userInfo.mac_address;
        await _scienceRepository.saveUserLog(uuid, param);
      }
    } catch (e, print) {
      Log.d(":::[saveUserLog error]  " + e.toString());
      Log.d(":::[saveUserLog error]  " + print.toString());
    }
  }
}
