// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'show_room_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

ShowRoomEntity _$ShowRoomEntityFromJson(Map<String, dynamic> json) {
  return _ShowRoomEntity.fromJson(json);
}

/// @nodoc
mixin _$ShowRoomEntity {
  String get showroom => throw _privateConstructorUsedError;
  String get topic => throw _privateConstructorUsedError;
  String get contents => throw _privateConstructorUsedError;
  String get floor => throw _privateConstructorUsedError;
  String get img => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ShowRoomEntityCopyWith<ShowRoomEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ShowRoomEntityCopyWith<$Res> {
  factory $ShowRoomEntityCopyWith(
          ShowRoomEntity value, $Res Function(ShowRoomEntity) then) =
      _$ShowRoomEntityCopyWithImpl<$Res>;
  $Res call(
      {String showroom,
      String topic,
      String contents,
      String floor,
      String img});
}

/// @nodoc
class _$ShowRoomEntityCopyWithImpl<$Res>
    implements $ShowRoomEntityCopyWith<$Res> {
  _$ShowRoomEntityCopyWithImpl(this._value, this._then);

  final ShowRoomEntity _value;
  // ignore: unused_field
  final $Res Function(ShowRoomEntity) _then;

  @override
  $Res call({
    Object? showroom = freezed,
    Object? topic = freezed,
    Object? contents = freezed,
    Object? floor = freezed,
    Object? img = freezed,
  }) {
    return _then(_value.copyWith(
      showroom: showroom == freezed
          ? _value.showroom
          : showroom // ignore: cast_nullable_to_non_nullable
              as String,
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      floor: floor == freezed
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_ShowRoomEntityCopyWith<$Res>
    implements $ShowRoomEntityCopyWith<$Res> {
  factory _$$_ShowRoomEntityCopyWith(
          _$_ShowRoomEntity value, $Res Function(_$_ShowRoomEntity) then) =
      __$$_ShowRoomEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {String showroom,
      String topic,
      String contents,
      String floor,
      String img});
}

/// @nodoc
class __$$_ShowRoomEntityCopyWithImpl<$Res>
    extends _$ShowRoomEntityCopyWithImpl<$Res>
    implements _$$_ShowRoomEntityCopyWith<$Res> {
  __$$_ShowRoomEntityCopyWithImpl(
      _$_ShowRoomEntity _value, $Res Function(_$_ShowRoomEntity) _then)
      : super(_value, (v) => _then(v as _$_ShowRoomEntity));

  @override
  _$_ShowRoomEntity get _value => super._value as _$_ShowRoomEntity;

  @override
  $Res call({
    Object? showroom = freezed,
    Object? topic = freezed,
    Object? contents = freezed,
    Object? floor = freezed,
    Object? img = freezed,
  }) {
    return _then(_$_ShowRoomEntity(
      showroom: showroom == freezed
          ? _value.showroom
          : showroom // ignore: cast_nullable_to_non_nullable
              as String,
      topic: topic == freezed
          ? _value.topic
          : topic // ignore: cast_nullable_to_non_nullable
              as String,
      contents: contents == freezed
          ? _value.contents
          : contents // ignore: cast_nullable_to_non_nullable
              as String,
      floor: floor == freezed
          ? _value.floor
          : floor // ignore: cast_nullable_to_non_nullable
              as String,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ShowRoomEntity implements _ShowRoomEntity {
  _$_ShowRoomEntity(
      {required this.showroom,
      required this.topic,
      required this.contents,
      required this.floor,
      required this.img});

  factory _$_ShowRoomEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ShowRoomEntityFromJson(json);

  @override
  final String showroom;
  @override
  final String topic;
  @override
  final String contents;
  @override
  final String floor;
  @override
  final String img;

  @override
  String toString() {
    return 'ShowRoomEntity(showroom: $showroom, topic: $topic, contents: $contents, floor: $floor, img: $img)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ShowRoomEntity &&
            const DeepCollectionEquality().equals(other.showroom, showroom) &&
            const DeepCollectionEquality().equals(other.topic, topic) &&
            const DeepCollectionEquality().equals(other.contents, contents) &&
            const DeepCollectionEquality().equals(other.floor, floor) &&
            const DeepCollectionEquality().equals(other.img, img));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(showroom),
      const DeepCollectionEquality().hash(topic),
      const DeepCollectionEquality().hash(contents),
      const DeepCollectionEquality().hash(floor),
      const DeepCollectionEquality().hash(img));

  @JsonKey(ignore: true)
  @override
  _$$_ShowRoomEntityCopyWith<_$_ShowRoomEntity> get copyWith =>
      __$$_ShowRoomEntityCopyWithImpl<_$_ShowRoomEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ShowRoomEntityToJson(
      this,
    );
  }
}

abstract class _ShowRoomEntity implements ShowRoomEntity {
  factory _ShowRoomEntity(
      {required final String showroom,
      required final String topic,
      required final String contents,
      required final String floor,
      required final String img}) = _$_ShowRoomEntity;

  factory _ShowRoomEntity.fromJson(Map<String, dynamic> json) =
      _$_ShowRoomEntity.fromJson;

  @override
  String get showroom;
  @override
  String get topic;
  @override
  String get contents;
  @override
  String get floor;
  @override
  String get img;
  @override
  @JsonKey(ignore: true)
  _$$_ShowRoomEntityCopyWith<_$_ShowRoomEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
