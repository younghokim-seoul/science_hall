import 'dart:io';

import 'package:device_info_plus/device_info_plus.dart';
import 'package:flutter/services.dart';
import 'package:science_hall/util/dev_log.dart';

Future<String> fetchDeviceId() async {
  final DeviceInfoPlugin deviceInfoPlugin = DeviceInfoPlugin();
  String macId = '';
  try {
    if (Platform.isAndroid) {
      final androidInfo = await deviceInfoPlugin.androidInfo;
      macId = androidInfo.id ?? "unknown";
      print(androidInfo.toMap());
    } else if (Platform.isIOS) {
      final iosInfo = await deviceInfoPlugin.iosInfo;
      macId = iosInfo.identifierForVendor ?? "unknown";
    }
  } on PlatformException {
    macId = "unknown";
  }
  Log.d(":::mac Id $macId");
  return macId;
}
