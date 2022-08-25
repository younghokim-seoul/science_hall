import 'package:science_hall/util/api_url.dart';
import 'package:shared_preferences/shared_preferences.dart';

Future<void> saveBeaconUUID(String uuid) async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString(ApiUrl.LOCAL_BEACON, uuid);
}

Future<String> getBeaconUUID() async {
  final SharedPreferences prefs = await SharedPreferences.getInstance();
  return prefs.getString(ApiUrl.LOCAL_BEACON) ?? '';
}
