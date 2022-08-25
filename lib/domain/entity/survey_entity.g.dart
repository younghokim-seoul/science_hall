// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'survey_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SurveyEntity _$$_SurveyEntityFromJson(Map<String, dynamic> json) =>
    _$_SurveyEntity(
      sex: json['sex'] as int,
      age_group: json['age_group'] as int,
      mac_address: json['mac_address'] as String,
    );

Map<String, dynamic> _$$_SurveyEntityToJson(_$_SurveyEntity instance) =>
    <String, dynamic>{
      'sex': instance.sex,
      'age_group': instance.age_group,
      'mac_address': instance.mac_address,
    };
