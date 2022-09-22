import 'dart:convert';

import 'package:arc/arc.dart';
import 'package:science_hall/domain/entity/beacon_entity.dart';
import 'package:science_hall/domain/entity/local_beacon_entity.dart';
import 'package:science_hall/util/api_url.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../../../util/dev_log.dart';


Future<void> saveBeaconUUID(String uuid,int major,int minor) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  var entity = LocalBeaconEntity(uuid: uuid, major: major, minor: minor);
  await prefs.setString(ApiUrl.LOCAL_BEACON, jsonEncode(entity));
}

Future<LocalBeaconEntity?> getBeaconUUID() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final jsonData = prefs.getString(ApiUrl.LOCAL_BEACON) ?? '';
  if(jsonData.isNullOrEmpty) return null;
  Map<String, dynamic> map = jsonDecode(jsonData);
  return LocalBeaconEntity.fromJson(map);
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
  Log.d(":::::clearVisited..");
}