// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'local_beacon_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocalBeaconEntity _$LocalBeaconEntityFromJson(Map<String, dynamic> json) {
  return _LocalBeaconEntity.fromJson(json);
}

/// @nodoc
mixin _$LocalBeaconEntity {
  String get uuid => throw _privateConstructorUsedError;
  int get major => throw _privateConstructorUsedError;
  int get minor => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocalBeaconEntityCopyWith<LocalBeaconEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocalBeaconEntityCopyWith<$Res> {
  factory $LocalBeaconEntityCopyWith(
          LocalBeaconEntity value, $Res Function(LocalBeaconEntity) then) =
      _$LocalBeaconEntityCopyWithImpl<$Res>;
  $Res call({String uuid, int major, int minor});
}

/// @nodoc
class _$LocalBeaconEntityCopyWithImpl<$Res>
    implements $LocalBeaconEntityCopyWith<$Res> {
  _$LocalBeaconEntityCopyWithImpl(this._value, this._then);

  final LocalBeaconEntity _value;
  // ignore: unused_field
  final $Res Function(LocalBeaconEntity) _then;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? major = freezed,
    Object? minor = freezed,
  }) {
    return _then(_value.copyWith(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      major: major == freezed
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as int,
      minor: minor == freezed
          ? _value.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_LocalBeaconEntityCopyWith<$Res>
    implements $LocalBeaconEntityCopyWith<$Res> {
  factory _$$_LocalBeaconEntityCopyWith(_$_LocalBeaconEntity value,
          $Res Function(_$_LocalBeaconEntity) then) =
      __$$_LocalBeaconEntityCopyWithImpl<$Res>;
  @override
  $Res call({String uuid, int major, int minor});
}

/// @nodoc
class __$$_LocalBeaconEntityCopyWithImpl<$Res>
    extends _$LocalBeaconEntityCopyWithImpl<$Res>
    implements _$$_LocalBeaconEntityCopyWith<$Res> {
  __$$_LocalBeaconEntityCopyWithImpl(
      _$_LocalBeaconEntity _value, $Res Function(_$_LocalBeaconEntity) _then)
      : super(_value, (v) => _then(v as _$_LocalBeaconEntity));

  @override
  _$_LocalBeaconEntity get _value => super._value as _$_LocalBeaconEntity;

  @override
  $Res call({
    Object? uuid = freezed,
    Object? major = freezed,
    Object? minor = freezed,
  }) {
    return _then(_$_LocalBeaconEntity(
      uuid: uuid == freezed
          ? _value.uuid
          : uuid // ignore: cast_nullable_to_non_nullable
              as String,
      major: major == freezed
          ? _value.major
          : major // ignore: cast_nullable_to_non_nullable
              as int,
      minor: minor == freezed
          ? _value.minor
          : minor // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LocalBeaconEntity implements _LocalBeaconEntity {
  _$_LocalBeaconEntity(
      {required this.uuid, required this.major, required this.minor});

  factory _$_LocalBeaconEntity.fromJson(Map<String, dynamic> json) =>
      _$$_LocalBeaconEntityFromJson(json);

  @override
  final String uuid;
  @override
  final int major;
  @override
  final int minor;

  @override
  String toString() {
    return 'LocalBeaconEntity(uuid: $uuid, major: $major, minor: $minor)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LocalBeaconEntity &&
            const DeepCollectionEquality().equals(other.uuid, uuid) &&
            const DeepCollectionEquality().equals(other.major, major) &&
            const DeepCollectionEquality().equals(other.minor, minor));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(uuid),
      const DeepCollectionEquality().hash(major),
      const DeepCollectionEquality().hash(minor));

  @JsonKey(ignore: true)
  @override
  _$$_LocalBeaconEntityCopyWith<_$_LocalBeaconEntity> get copyWith =>
      __$$_LocalBeaconEntityCopyWithImpl<_$_LocalBeaconEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LocalBeaconEntityToJson(
      this,
    );
  }
}

abstract class _LocalBeaconEntity implements LocalBeaconEntity {
  factory _LocalBeaconEntity(
      {required final String uuid,
      required final int major,
      required final int minor}) = _$_LocalBeaconEntity;

  factory _LocalBeaconEntity.fromJson(Map<String, dynamic> json) =
      _$_LocalBeaconEntity.fromJson;

  @override
  String get uuid;
  @override
  int get major;
  @override
  int get minor;
  @override
  @JsonKey(ignore: true)
  _$$_LocalBeaconEntityCopyWith<_$_LocalBeaconEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
