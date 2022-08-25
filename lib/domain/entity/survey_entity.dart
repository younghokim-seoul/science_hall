
import 'package:freezed_annotation/freezed_annotation.dart';

part 'survey_entity.freezed.dart';
part 'survey_entity.g.dart';

@freezed
class SurveyEntity with _$SurveyEntity {
  factory SurveyEntity({
    required int sex,
    required int age_group,
    required String mac_address,
  }) = _SurveyEntity;

  factory SurveyEntity.fromJson(Map<String, dynamic> json) => _$SurveyEntityFromJson(json);
}
