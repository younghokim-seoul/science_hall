import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:get_it/get_it.dart';
import 'package:science_hall/data/datasource/beacon/beacon_manager.dart';
import 'package:science_hall/data/datasource/remote/http_request.dart';
import 'package:science_hall/data/datasource/remote/remote_datasource.dart';
import 'package:science_hall/data/datasource/repositoryimpl/science_repository_impl.dart';
import 'package:science_hall/domain/repository/science_repository.dart';


import 'presentation/location/location_viewmodel.dart';


final it = GetIt.instance;

Future<void> init() async {
  it.registerFactory(() => LocationViewModel());
  it.registerLazySingleton<BeaconManager>(() => BeaconManager());
  it.registerLazySingleton<ScienceRepository>(
          () => ScienceRepositoryImpl(it<RemoteDataSource>()));
  it.registerLazySingleton<RemoteDataSource>(
          () => HttpRequest());
}

final beaconProvider = Provider.autoDispose<BeaconManager>((ref) => BeaconManager());
final remoteDataSourceProvider =
    Provider.autoDispose<RemoteDataSource>((ref) => HttpRequest());
final scienceRepositoryProvider =
    Provider.autoDispose<ScienceRepository>((ref) {
  final remoteDataSource = ref.watch(remoteDataSourceProvider);
  return ScienceRepositoryImpl(remoteDataSource);
});
