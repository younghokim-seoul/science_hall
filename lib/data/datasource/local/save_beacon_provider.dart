import 'dart:convert';

import 'package:arc/arc.dart';
import 'package:science_hall/domain/entity/beacon_entity.dart';
import 'package:science_hall/util/api_url.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../domain/entity/event_entity.dart';
import '../../../util/dev_log.dart';

Future<void> saveBeaconUUID(String uuid) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(ApiUrl.LOCAL_BEACON, uuid);
}

Future<String> getBeaconUUID() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(ApiUrl.LOCAL_BEACON) ?? '';
}

Future<void> saveLatestExhibition(BeaconEntity entity) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(ApiUrl.LOCAL_EXHIBITION, jsonEncode(entity));
}

Future<BeaconEntity?> getLatestExhibition() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final jsonData = prefs.getString(ApiUrl.LOCAL_EXHIBITION) ?? '';
  if(jsonData.isNullOrEmpty) return null;
  Map<String, dynamic> map = jsonDecode(jsonData);
  return BeaconEntity.fromJson(map);
}

Future<void> clearVisited() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.remove(ApiUrl.LOCAL_BEACON);
  await prefs.remove(ApiUrl.LOCAL_EXHIBITION);
  Log.d(":::::방문기록 제거완료..");
}