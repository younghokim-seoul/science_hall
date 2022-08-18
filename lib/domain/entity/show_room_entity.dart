
import 'package:freezed_annotation/freezed_annotation.dart';

part 'show_room_entity.freezed.dart';
part 'show_room_entity.g.dart';

@freezed
class ShowRoomEntity with _$ShowRoomEntity {
  factory ShowRoomEntity({
    required String showroom,
    required String topic,
    required String contents,
    required String floor,
    required String img,
  }) = _ShowRoomEntity;

  factory ShowRoomEntity.fromJson(Map<String, dynamic> json) => _$ShowRoomEntityFromJson(json);
}