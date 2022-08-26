import 'dart:io';


import 'package:device_info/device_info.dart';
import 'package:flutter/services.dart';
import 'package:science_hall/util/dev_log.dart';

Future<String> fetchDeviceId() async {
  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  String macId = 'unknown';
  try {
    if (Platform.isAndroid) {
      final androidInfo = await deviceInfoPlugin.androidInfo;
      macId = androidInfo.androidId;
      Log.d(macId);
    } else if (Platform.isIOS) {
      final iosInfo = await deviceInfoPlugin.iosInfo;
      macId = iosInfo.identifierForVendor;
    }
  } on PlatformException {
    macId = "unknown";
  }
  Log.d(":::mac Id $macId");
  return macId;
}
