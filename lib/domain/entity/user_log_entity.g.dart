// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_log_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserLogEntity _$$_UserLogEntityFromJson(Map<String, dynamic> json) =>
    _$_UserLogEntity(
      pk: json['pk'] as int,
      sex: json['sex'] as int,
      age_group: json['age_group'] as int,
      mac_address: json['mac_address'] as String,
    );

Map<String, dynamic> _$$_UserLogEntityToJson(_$_UserLogEntity instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'sex': instance.sex,
      'age_group': instance.age_group,
      'mac_address': instance.mac_address,
    };
