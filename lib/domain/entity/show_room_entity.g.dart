// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'show_room_entity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ShowRoomEntity _$$_ShowRoomEntityFromJson(Map<String, dynamic> json) =>
    _$_ShowRoomEntity(
      showroom: json['showroom'] as String,
      topic: json['topic'] as String,
      contents: json['contents'] as String,
      floor: json['floor'] as String,
      img: json['img'] as String,
    );

Map<String, dynamic> _$$_ShowRoomEntityToJson(_$_ShowRoomEntity instance) =>
    <String, dynamic>{
      'showroom': instance.showroom,
      'topic': instance.topic,
      'contents': instance.contents,
      'floor': instance.floor,
      'img': instance.img,
    };
