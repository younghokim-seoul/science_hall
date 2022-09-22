import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:science_hall/domain/entity/event_entity.dart';

part 'local_beacon_entity.freezed.dart';
part 'local_beacon_entity.g.dart';
@freezed
class LocalBeaconEntity with _$LocalBeaconEntity {
  factory LocalBeaconEntity({
    required String uuid,
    required int major,
    required int minor,
  }) = _LocalBeaconEntity;

  factory LocalBeaconEntity.fromJson(Map<String, dynamic> json) => _$LocalBeaconEntityFromJson(json);
}