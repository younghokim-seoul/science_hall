import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:science_hall/domain/entity/event_entity.dart';

part 'beacon_entity.freezed.dart';
part 'beacon_entity.g.dart';
@freezed
class BeaconEntity with _$BeaconEntity {
  factory BeaconEntity({
    required int pk,
    required InnerExhibitionEntity inner_exhibition,
  }) = _BeaconEntity;

  factory BeaconEntity.fromJson(Map<String, dynamic> json) => _$BeaconEntityFromJson(json);
}