// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'event_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_EventEntity _$$_EventEntityFromJson(Map<String, dynamic> json) =>
    _$_EventEntity(
      pk: json['pk'] as int,
      name: json['name'] as String,
      start_dt: json['start_dt'] as String,
      end_dt: json['end_dt'] as String,
      type: json['type'] as int,
      explanation: json['explanation'] as String?,
      image: json['image'] as String,
    );

Map<String, dynamic> _$$_EventEntityToJson(_$_EventEntity instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'name': instance.name,
      'start_dt': instance.start_dt,
      'end_dt': instance.end_dt,
      'type': instance.type,
      'explanation': instance.explanation,
      'image': instance.image,
    };

_$_InnerExhibitionEntity _$$_InnerExhibitionEntityFromJson(
        Map<String, dynamic> json) =>
    _$_InnerExhibitionEntity(
      pk: json['pk'] as int,
      name: json['name'] as String,
      vr_link: json['vr_link'] as String,
      order: json['order'] as int,
      type: json['type'] as String,
      explanation: json['explanation'] as String,
      image: json['image'] as String,
      x_coordinate: json['x_coordinate'] as String,
      y_coordinate: json['y_coordinate'] as String,
    );

Map<String, dynamic> _$$_InnerExhibitionEntityToJson(
        _$_InnerExhibitionEntity instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'name': instance.name,
      'vr_link': instance.vr_link,
      'order': instance.order,
      'type': instance.type,
      'explanation': instance.explanation,
      'image': instance.image,
      'x_coordinate': instance.x_coordinate,
      'y_coordinate': instance.y_coordinate,
    };

_$_ExhibitionEntity _$$_ExhibitionEntityFromJson(Map<String, dynamic> json) =>
    _$_ExhibitionEntity(
      pk: json['pk'] as int,
      floor_ko: json['floor_ko'] as String?,
      floor_en: json['floor_en'] as String?,
      house_ko: json['house_ko'] as String?,
      house_en: json['house_en'] as String?,
      drawing_image: json['drawing_image'] as String,
    );

Map<String, dynamic> _$$_ExhibitionEntityToJson(_$_ExhibitionEntity instance) =>
    <String, dynamic>{
      'pk': instance.pk,
      'floor_ko': instance.floor_ko,
      'floor_en': instance.floor_en,
      'house_ko': instance.house_ko,
      'house_en': instance.house_en,
      'drawing_image': instance.drawing_image,
    };
