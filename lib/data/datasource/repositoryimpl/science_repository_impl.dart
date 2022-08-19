
import 'dart:convert';


import 'package:science_hall/data/datasource/remote/remote_datasource.dart';
import 'package:science_hall/domain/entity/token_entity.dart';
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


}