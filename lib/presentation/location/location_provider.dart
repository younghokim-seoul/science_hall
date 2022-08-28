import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:science_hall/data/datasource/local/save_beacon_provider.dart';
import 'package:science_hall/data/datasource/local/save_user_provider.dart';
import 'package:science_hall/di_container.dart';
import 'package:science_hall/domain/entity/beacon_entity.dart';
import 'package:science_hall/domain/repository/science_repository.dart';
import 'package:science_hall/util/dev_log.dart';

part 'location_provider.freezed.dart';

final locationStateProvider = StateNotifierProvider.autoDispose<LocationStateNotifier, LocationState>(
  (ref) {
    final repository = ref.watch(scienceRepositoryProvider);
    final sateNotifiler = LocationStateNotifier(
      scienceRepository: repository,
    );
    return sateNotifiler;
  },
);

class LocationStateNotifier extends StateNotifier<LocationState> {
  LocationStateNotifier({
    required this.scienceRepository,
  }) : super(LocationState(isLoading: true, location: null));

  final ScienceRepository scienceRepository;

  Future<void> fetchLatestExhibition() async {
    final response = await getLatestExhibition();
    if(mounted){
      state = state.copyWith(
        isLoading: false,
        location : response,
        error: null,
      );
    }
  }

  Future<void> fetchBeacon() async {
    try {
      String macUuid = await getBeaconUUID();
      Map<String, dynamic> param = {};
      param['uuid'] = macUuid;
      final response = await scienceRepository.fetchExhibition(param);
      await saveLatestExhibition(response);
    } catch (e,print) {
      Log.d(":::[fetchBeacon error]  " + print.toString());
    }
  }

  Future<void> saveUserLog(String uuid) async {
    try {
      var userInfo = await getUserInfo();
      if (userInfo != null) {
        Log.d("userInfo " + userInfo.toString());
        Map<String, dynamic> param = {};
        param['sex'] = userInfo.sex;
        param['age_group'] = userInfo.age_group;
        param['mac_address'] = userInfo.mac_address;
        await scienceRepository.saveUserLog(uuid,param);
      }
    } catch (e,print) {
      Log.d(":::[saveUserLog error]  "  + e.toString());
      Log.d(":::[saveUserLog error]  " + print.toString());
    }
  }
}

@freezed
class LocationState with _$LocationState {
  factory LocationState({
    required bool isLoading,
    required BeaconEntity? location,
    dynamic error,
  }) = _LocationState;
}
