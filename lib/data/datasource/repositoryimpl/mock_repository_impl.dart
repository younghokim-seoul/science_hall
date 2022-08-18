

import 'dart:convert';

import 'package:science_hall/data/datasource/remote/mock_data_store.dart';
import 'package:science_hall/domain/entity/show_room_entity.dart';
import 'package:science_hall/domain/repository/mock_repository.dart';
import 'package:science_hall/util/dev_log.dart';

class MockRepositoryImpl extends MockRepository{
  @override
  Future<List<ShowRoomEntity>> fetchShowRoom(String floor) async {
   String result = await MockDataStore.asset.loadString("mockdata/get_data.json");
   List<dynamic> parsedJson = jsonDecode(result);
   var value = parsedJson.map((dynamic i) => ShowRoomEntity.fromJson(i as Map<String, dynamic>)).where((element) => element.floor == floor).toList();
   return value;
  }

}