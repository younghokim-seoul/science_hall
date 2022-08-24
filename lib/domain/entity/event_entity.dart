
import 'package:freezed_annotation/freezed_annotation.dart';

part 'event_entity.freezed.dart';
part 'event_entity.g.dart';

@freezed
class EventEntity with _$EventEntity {
  factory EventEntity({
    required int pk,
    required String name,
    required String start_dt,
    required String end_dt,
    required int type,
    required String? explanation,
    required String? image,
    required List<InnerExhibitionEntity> inner_exhibition,
  }) = _EventEntity;

  factory EventEntity.fromJson(Map<String, dynamic> json) => _$EventEntityFromJson(json);
}


@freezed
class InnerExhibitionEntity with _$InnerExhibitionEntity {
  factory InnerExhibitionEntity({
    required int pk,
    required String name,
    required String? vr_link,
    required int order,
    required String? explanation,
    required String image,
    required String x_coordinate,
    required String y_coordinate,
    required ExhibitionEntity? exhibition,
  }) = _InnerExhibitionEntity;

  factory InnerExhibitionEntity.fromJson(Map<String, dynamic> json) => _$InnerExhibitionEntityFromJson(json);
}


@freezed
class ExhibitionEntity with _$ExhibitionEntity {
  factory ExhibitionEntity({
    required int pk,
    required String floor_ko,
    required String floor_en,
    required String? house_ko,
    required String? house_en,
    required String? drawing_image,
  }) = _ExhibitionEntity;

  factory ExhibitionEntity.fromJson(Map<String, dynamic> json) => _$ExhibitionEntityFromJson(json);
}