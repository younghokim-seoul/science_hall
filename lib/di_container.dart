import 'package:arc/arc.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:science_hall/data/datasource/beacon/beacon_manager.dart';
import 'package:science_hall/data/datasource/remote/http_request.dart';
import 'package:science_hall/data/datasource/remote/remote_datasource.dart';
import 'package:science_hall/data/datasource/repositoryimpl/science_repository_impl.dart';
import 'package:science_hall/domain/entity/token_entity.dart';
import 'package:science_hall/domain/repository/science_repository.dart';
import 'package:science_hall/util/dev_log.dart';
import 'package:shared_preferences/shared_preferences.dart';


final beaconProvider =
    Provider.autoDispose<BeaconManager>((ref) => BeaconManager());
final remoteDataSourceProvider =
    Provider.autoDispose<RemoteDataSource>((ref) => HttpRequest());
final scienceRepositoryProvider =
    Provider.autoDispose<ScienceRepository>((ref) {
  final remoteDataSource = ref.watch(remoteDataSourceProvider);
  return ScienceRepositoryImpl(remoteDataSource);
});



final tokenProvider = Provider.autoDispose<void>((ref) async {
  final SharedPreferences pref = await SharedPreferences.getInstance();
  Log.d(":::::::::::::::::token ${pref.getString("token")}");
  if(pref.getString("token").isNullOrEmpty){
    final repository = ref.watch(scienceRepositoryProvider);
    Map<String, dynamic> param = {};
    param['username'] = "anonymous";
    param['password'] = "anonymous";
    TokenEntity entity = await repository.getToken(param);
    Log.d(":::::::::::::::::onNext ${entity.access}");
    await pref.setString("token", entity.access);
  }

});
