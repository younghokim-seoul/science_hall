import 'dart:async';
import 'dart:core';
import 'package:arc/arc_subject.dart';
import 'package:flutter_beacon/flutter_beacon.dart';
import 'package:science_hall/data/datasource/beacon/reactive_beacon_state.dart';
import 'package:science_hall/util/dev_log.dart';

class BeaconManager extends ReactiveBeaconState {
  var bluetoothState = BluetoothState.stateOff;
  var authorizationStatus = AuthorizationStatus.notDetermined;
  var locationService = false;

  StreamSubscription<RangingResult>? _subscription;

  final beaconState = ArcSubject<RangingResult>();

  bool get bluetoothEnabled => bluetoothState.value == BluetoothState.stateOn;

  bool get authorizationStatusOk =>
      authorizationStatus.value == AuthorizationStatus.allowed ||
      authorizationStatus.value == AuthorizationStatus.always;

  bool get locationServiceEnabled => locationService;


  final regions = <Region>[
    Region(
        identifier: 'Bluno',
        proximityUUID: 'e2c56db5-dffb-48d2-b060-d0f5a71096e0'),
  ];

  Future<void> initScanBeacon() async => await flutterBeacon.initializeScanning;

  void check() async {
    await initScanBeacon();
    bluetoothState = await flutterBeacon.bluetoothState;
    authorizationStatus = await flutterBeacon.authorizationStatus;
    locationService = await flutterBeacon.checkLocationServicesIfEnabled;
    Log.d(":::bluetoothState $bluetoothState authorizationStatus $authorizationStatus locationServiceEnabled $locationServiceEnabled");

    bool isReady = bluetoothEnabled && authorizationStatusOk && locationServiceEnabled;
    await startScan(isReady);
  }

  Future<void> startScan(bool isReady) async {
    Log.d("::::startScan");
    if (_subscription != null) await _stopScan();

    _subscription = flutterBeacon.ranging(regions).listen((RangingResult result) {
      // Log.d(result.toString());
      if(result.beacons.isNotEmpty){
        int rssi = result.beacons.first.rssi;
        if(rssi.abs() >= 35 && rssi.abs() <= 99){
          beaconState.val = result;
        }
      }
    });
  }

  Future<void> _stopScan() async {
    Log.d('Stop ble discovery');
    await _subscription?.cancel();
    _subscription = null;
  }

  Future<void> _dispose() async {
    await beaconState.close();
  }

  Future<void> release() async {
    Log.d(":::릴리즈시작...");
    await _stopScan();
    await _dispose();
    Log.d(":::릴리즈종료..");
  }

  @override
  Stream get state => beaconState.stream;
}
