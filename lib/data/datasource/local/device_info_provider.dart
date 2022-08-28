import 'dart:io';

import 'package:arc/arc.dart';
import 'package:device_info/device_info.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:science_hall/data/datasource/local/save_beacon_provider.dart';
import 'package:science_hall/di_container.dart';
import 'package:science_hall/domain/entity/beacon_entity.dart';
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

Future<BeaconEntity?> fetchLatestExhibition() async => await getLatestExhibition();

final beaconStreamProvider = StreamProvider.autoDispose<BeaconEntity>((ref) async* {
  final ragingSate =  ref.read(beaconProvider).beaconState.stream;
  Log.d("::::::>>>>> " + ragingSate.toString());
  await for (var event in ragingSate) {
    Log.d("::::::>>>>> " + event.toString());
    if (!event.isNullOrEmpty) {
      Log.d("::::::>>>>> " + event.toString());
      String latestUUID = await getBeaconUUID();
      var ranging = event;
      Log.d("ranging " + ranging.toString());
      // if (ranging.beacons.isNotEmpty) {
      //   //비콘이 감지되었을떄.
      //   // if (latestUUID != ranging.region.proximityUUID) {
      //     //가장 최근 uuid와 감지된 비콘 uuid가 다르다면
      //     Log.d("가장 최근 uuid와 감지된 비콘 uuid가 다르다면");
      //     if (!ranging.region.proximityUUID.isNullOrEmpty) {
      //       //최신 uuid로 저장
      //       Log.d("최신 uuid로 저장");
      //       await saveBeaconUUID(ranging.region.proximityUUID!);
      //       //최신 uuid의... 관람실 정보..
      //
      //       //최신 uuid의... 관람실의 위치
      //       Log.d("유저 로그전달");
      //       await ref.read(locationStateProvider.notifier).fetchBeacon();
      //       await ref.read(locationStateProvider.notifier).saveUserLog(ranging.region.proximityUUID!);
      //
      //       var model = await getLatestExhibition();
      //       //최신 uuid의 로그를 쏴야함.. 관람실 정보등록을위해.
      //
      //       if(!model.isNullOrEmpty){
      //         yield model!;
      //       }
      //     }
      //   // }
      // }
    }
  }
});


