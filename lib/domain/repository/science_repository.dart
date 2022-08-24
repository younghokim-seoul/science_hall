import 'package:science_hall/data/datasource/remote/remote_datasource.dart';
import 'package:science_hall/domain/entity/beacon_entity.dart';
import 'package:science_hall/domain/entity/event_entity.dart';
import 'package:science_hall/domain/entity/token_entity.dart';

abstract class ScienceRepository {
  RemoteDataSource dataSource;

  ScienceRepository(this.dataSource);

  Future<TokenEntity> getToken(Map<String, dynamic> param);

  Future<List<EventEntity>> fetchEvents();

  Future<BeaconEntity> fetchExhibition(Map<String, dynamic> param);
}
