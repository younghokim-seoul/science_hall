
import 'dart:convert';

import 'package:science_hall/data/datasource/remote/remote_datasource.dart';
import 'package:science_hall/domain/entity/beacon_entity.dart';
import 'package:science_hall/domain/entity/event_entity.dart';
import 'package:science_hall/domain/entity/foot_print_entity.dart';
import 'package:science_hall/domain/entity/token_entity.dart';
import 'package:science_hall/domain/entity/user_log_entity.dart';
import 'package:science_hall/domain/repository/science_repository.dart';
import 'package:science_hall/util/api_url.dart';

class ScienceRepositoryImpl implements ScienceRepository{
  @override
  RemoteDataSource dataSource;

  ScienceRepositoryImpl(this.dataSource);

  @override
  Future<TokenEntity> getToken(Map<String, dynamic> param) async {
    var res = await dataSource.request(HttpMethod.POST, ApiUrl.TOKEN, param);
    var responseModel = TokenEntity.fromJson(json.decode(utf8.decode(res.bodyBytes)));
    return responseModel;
  }

  @override
  Future<List<EventEntity>> fetchEvents() async {
    var res = await dataSource.request(HttpMethod.GET, ApiUrl.EVENT, {});
    List<dynamic> parsedJson = json.decode(utf8.decode(res.bodyBytes));
    var value = parsedJson.map((dynamic i) => EventEntity.fromJson(i as Map<String, dynamic>)).toList();
    return value;
  }

  @override
  Future<BeaconEntity> fetchExhibition(Map<String, dynamic> param) async {
    var res = await dataSource.request(HttpMethod.GET, ApiUrl.BEACON, param);
    var responseModel = BeaconEntity.fromJson(json.decode(utf8.decode(res.bodyBytes)));
    return responseModel;
  }

  @override
  Future<UserLogEntity> saveUserLog(String uuid,Map<String, dynamic> param) async {
    var res = await dataSource.request(HttpMethod.POST, ApiUrl.USER_LOG + uuid, param);
    var responseModel = UserLogEntity.fromJson(json.decode(utf8.decode(res.bodyBytes)));
    return responseModel;
  }

  @override
  Future<FootPrintEntity> fetchFootPrint(String macAddress) async{
    Map<String, dynamic> param = {};
    param['mac_address'] = macAddress;
    var res = await dataSource.request(HttpMethod.GET, ApiUrl.VISITED_LOG, param);
    var responseModel = FootPrintEntity.fromJson(json.decode(utf8.decode(res.bodyBytes)));
    return responseModel;
  }


}