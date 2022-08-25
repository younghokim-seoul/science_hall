import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:science_hall/di_container.dart';
import 'package:science_hall/domain/entity/beacon_entity.dart';
import 'package:science_hall/domain/entity/event_entity.dart';
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

  Future<void> fetchBeacon() async {
    try {
      Map<String, dynamic> param = {};
      param['uuid'] = "E2C56DB5-DFFB-48D2-B060-D0F5A71096E0";
      final response = await scienceRepository.fetchExhibition(param);
      if(mounted){
        state = state.copyWith(
          isLoading: false,
          location : response,
          error: null,
        );
      }
    } catch (e,print) {
      Log.d(":::print " + print.toString());
      if(mounted){
        state = state.copyWith(error: e, isLoading: false);
      }
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
