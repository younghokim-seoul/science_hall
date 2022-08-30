import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:science_hall/domain/entity/beacon_entity.dart';

part 'location_provider.freezed.dart';

@freezed
class LocationState with _$LocationState {
  factory LocationState({
    required bool isLoading,
    required BeaconEntity? location,
    dynamic error,
  }) = _LocationState;
}
