import 'dart:async';

import 'package:flutter_beacon/flutter_beacon.dart';
import 'package:science_hall/data/datasource/beacon/reactive_beacon_state.dart';
import 'package:science_hall/util/dev_log.dart';

class BeaconManager extends ReactiveBeaconState {
  var bluetoothState = BluetoothState.stateOff;
  var authorizationStatus = AuthorizationStatus.notDetermined;
  var locationService = false;

  StreamSubscription<RangingResult>? _subscription;

  bool get bluetoothEnabled => bluetoothState.value == BluetoothState.stateOn;

  bool get authorizationStatusOk =>
      authorizationStatus.value == AuthorizationStatus.allowed ||
      authorizationStatus.value == AuthorizationStatus.always;

  bool get locationServiceEnabled => locationService;

  final regions = <Region>[];

  Future<void> initScanBeacon() async => await flutterBeacon.initializeScanning;

  void check() async {
    await initScanBeacon();
    bluetoothState = await flutterBeacon.bluetoothState;
    authorizationStatus = await flutterBeacon.authorizationStatus;
    locationService = await flutterBeacon.checkLocationServicesIfEnabled;
    Log.d(
        ":::bluetoothState $bluetoothState authorizationStatus $authorizationStatus locationServiceEnabled $locationServiceEnabled");

    bool isReady =
        bluetoothEnabled && authorizationStatusOk && locationServiceEnabled;
    await startScan(isReady);
  }

  Future<void> startScan(bool isReady) async {
    Log.d("::::startScan");
    if (_subscription != null) await stopScan();

    regions.add(
      Region(
          identifier: 'Bluno',
          proximityUUID: 'e2c56db5-dffb-48d2-b060-d0f5a71096e0',
          minor: 29,
          major: 2027),
    );

    _subscription =
        flutterBeacon.ranging(regions).listen((RangingResult result) {
      Log.d(result.toString());
    });
  }

  Future<void> stopScan() async {
    Log.d('Stop ble discovery');
    await _subscription?.cancel();
    _subscription = null;
  }

  @override
  Stream get state => throw UnimplementedError();
}
