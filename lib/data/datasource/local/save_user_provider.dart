import 'dart:convert';

import 'package:arc/arc.dart';
import 'package:science_hall/data/datasource/local/device_info_provider.dart';
import 'package:science_hall/domain/entity/survey_entity.dart';
import 'package:science_hall/util/api_url.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveUserInfo(int age,int sex) async {
  String macId = await fetchDeviceId();
  var entity = SurveyEntity(sex: sex, age_group: age, mac_address: macId);
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(ApiUrl.LOCAL_USER_INFO, jsonEncode(entity));
}


Future<SurveyEntity?> getUserInfo() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  final jsonData = prefs.getString(ApiUrl.LOCAL_USER_INFO) ?? '';
  if(jsonData.isNullOrEmpty) return null;
  Map<String, dynamic> map = jsonDecode(jsonData);
  return SurveyEntity.fromJson(map);
}
