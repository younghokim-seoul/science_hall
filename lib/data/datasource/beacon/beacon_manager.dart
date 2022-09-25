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

  bool get bluetoothEnabled =>
      bluetoothState.value.toString() == BluetoothState.stateOn.toString();

  bool get authorizationStatusOk =>
      authorizationStatus.value.toString() ==
          AuthorizationStatus.allowed.toString() ||
      authorizationStatus.value.toString() ==
          AuthorizationStatus.always.toString();

  bool get locationServiceEnabled => locationService;

  final regions = <Region>[
    Region(
        identifier: 'Bluno',
        proximityUUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0',
        major: 2030,
        minor: 26),
    Region(
        identifier: 'Bluno',
        proximityUUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0',
        major: 2049,
        minor: 28),
    Region(
        identifier: 'Bluno',
        proximityUUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0',
        major: 2032,
        minor: 26),
    Region(
        identifier: 'BlunoV1.8',
        proximityUUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0',
        major: 2056,
        minor: 28),
    Region(
        identifier: 'BlunoV1.8',
        proximityUUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0',
        major: 2036,
        minor: 26),
    Region(
        identifier: 'BlunoV1.8',
        proximityUUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0',
        major: 0,
        minor: 0),
    Region(
        identifier: 'Bluno',
        proximityUUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0',
        major: 2026,
        minor: 27),
    Region(
        identifier: 'Bluno',
        proximityUUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0',
        major: 2036,
        minor: 25),
    Region(
        identifier: 'BlunoV1.8',
        proximityUUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0',
        major: 2036,
        minor: 27),
    Region(
        identifier: 'BlunoV1.8',
        proximityUUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0',
        major: 2023,
        minor: 26),
    Region(
        identifier: 'Bluno',
        proximityUUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0',
        major: 2051,
        minor: 26),
    Region(
        identifier: 'Bluno',
        proximityUUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0',
        major: 8083,
        minor: 80),
    Region(
        identifier: 'BlunoV1.8',
        proximityUUID: 'E2C56DB5-DFFB-48D2-B060-D0F5A71096E0',
        major: 2022,
        minor: 25),
  ];

  Future<void> initScanBeacon() async => await flutterBeacon.initializeScanning;

  void check() async {
    await initScanBeacon();
    bluetoothState = await flutterBeacon.bluetoothState;
    authorizationStatus = await flutterBeacon.authorizationStatus;
    locationService = await flutterBeacon.checkLocationServicesIfEnabled;

    if (!bluetoothEnabled ||
        !authorizationStatusOk ||
        !locationServiceEnabled) {
      Log.d(
          ":::bluetoothEnabled $bluetoothEnabled authorizationStatusOk $authorizationStatusOk locationServiceEnabled $locationServiceEnabled");
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
            rssi.abs() <= 75 &&
            result.beacons.length == 1) {
          var latestUUID = await getBeaconUUID();
          // if (latestUUID != result.beacons.first.proximityUUID) {
          //가장 최근 uuid와 감지된 비콘 uuid가 다르다면?
          // Log.d("가장 최근 uuid와 감지된 비콘 uuid가 다르다면?");
          if (!result.beacons.first.proximityUUID.isNullOrEmpty) {
            //비콘에 포함된 proximityUUID가 null이 아니라면?
            // Log.d("비콘에 포함된 proximityUUID가 null이 아니라면? => 비콘 정보저장 및 비콘 정보호출");

            await saveBeaconUUID(result.beacons.first.proximityUUID,
                result.beacons.first.major, result.beacons.first.minor);
            await fetchBeacon();
            await saveUserLog(
                "${result.beacons.first.proximityUUID}:${result.beacons.first.major}:${result.beacons.first.minor}");
            beaconState.val = result;
          }
          // }
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
      var localBeacon = await getBeaconUUID();

      if (localBeacon != null) {
        Map<String, dynamic> param = {};
        param['uuid'] =
            "${localBeacon.uuid}:${localBeacon.major}:${localBeacon.minor}";
        final response = await _scienceRepository.fetchExhibition(param);
        await saveLatestExhibition(response);
      }
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
