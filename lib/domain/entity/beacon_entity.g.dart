// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'beacon_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BeaconEntity _$$_BeaconEntityFromJson(Map<String, dynamic> json) =>
    _$_BeaconEntity(
      pk: json['pk'] as int,
      inner_exhibition: InnerExhibitionEntity.fromJson(
          json['inner_exhibition'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BeaconEntityToJson(_$_BeaconEntity instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'inner_exhibition': instance.inner_exhibition,
    };
