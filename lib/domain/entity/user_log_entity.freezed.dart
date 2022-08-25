// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_log_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserLogEntity _$UserLogEntityFromJson(Map<String, dynamic> json) {
  return _UserLogEntity.fromJson(json);
}

/// @nodoc
mixin _$UserLogEntity {
  int get pk => throw _privateConstructorUsedError;
  int get sex => throw _privateConstructorUsedError;
  int get age_group => throw _privateConstructorUsedError;
  String get mac_address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserLogEntityCopyWith<UserLogEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserLogEntityCopyWith<$Res> {
  factory $UserLogEntityCopyWith(
          UserLogEntity value, $Res Function(UserLogEntity) then) =
      _$UserLogEntityCopyWithImpl<$Res>;
  $Res call({int pk, int sex, int age_group, String mac_address});
}

/// @nodoc
class _$UserLogEntityCopyWithImpl<$Res>
    implements $UserLogEntityCopyWith<$Res> {
  _$UserLogEntityCopyWithImpl(this._value, this._then);

  final UserLogEntity _value;
  // ignore: unused_field
  final $Res Function(UserLogEntity) _then;

  @override
  $Res call({
    Object? pk = freezed,
    Object? sex = freezed,
    Object? age_group = freezed,
    Object? mac_address = freezed,
  }) {
    return _then(_value.copyWith(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int,
      age_group: age_group == freezed
          ? _value.age_group
          : age_group // ignore: cast_nullable_to_non_nullable
              as int,
      mac_address: mac_address == freezed
          ? _value.mac_address
          : mac_address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserLogEntityCopyWith<$Res>
    implements $UserLogEntityCopyWith<$Res> {
  factory _$$_UserLogEntityCopyWith(
          _$_UserLogEntity value, $Res Function(_$_UserLogEntity) then) =
      __$$_UserLogEntityCopyWithImpl<$Res>;
  @override
  $Res call({int pk, int sex, int age_group, String mac_address});
}

/// @nodoc
class __$$_UserLogEntityCopyWithImpl<$Res>
    extends _$UserLogEntityCopyWithImpl<$Res>
    implements _$$_UserLogEntityCopyWith<$Res> {
  __$$_UserLogEntityCopyWithImpl(
      _$_UserLogEntity _value, $Res Function(_$_UserLogEntity) _then)
      : super(_value, (v) => _then(v as _$_UserLogEntity));

  @override
  _$_UserLogEntity get _value => super._value as _$_UserLogEntity;

  @override
  $Res call({
    Object? pk = freezed,
    Object? sex = freezed,
    Object? age_group = freezed,
    Object? mac_address = freezed,
  }) {
    return _then(_$_UserLogEntity(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int,
      sex: sex == freezed
          ? _value.sex
          : sex // ignore: cast_nullable_to_non_nullable
              as int,
      age_group: age_group == freezed
          ? _value.age_group
          : age_group // ignore: cast_nullable_to_non_nullable
              as int,
      mac_address: mac_address == freezed
          ? _value.mac_address
          : mac_address // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserLogEntity implements _UserLogEntity {
  _$_UserLogEntity(
      {required this.pk,
      required this.sex,
      required this.age_group,
      required this.mac_address});

  factory _$_UserLogEntity.fromJson(Map<String, dynamic> json) =>
      _$$_UserLogEntityFromJson(json);

  @override
  final int pk;
  @override
  final int sex;
  @override
  final int age_group;
  @override
  final String mac_address;

  @override
  String toString() {
    return 'UserLogEntity(pk: $pk, sex: $sex, age_group: $age_group, mac_address: $mac_address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserLogEntity &&
            const DeepCollectionEquality().equals(other.pk, pk) &&
            const DeepCollectionEquality().equals(other.sex, sex) &&
            const DeepCollectionEquality().equals(other.age_group, age_group) &&
            const DeepCollectionEquality()
                .equals(other.mac_address, mac_address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pk),
      const DeepCollectionEquality().hash(sex),
      const DeepCollectionEquality().hash(age_group),
      const DeepCollectionEquality().hash(mac_address));

  @JsonKey(ignore: true)
  @override
  _$$_UserLogEntityCopyWith<_$_UserLogEntity> get copyWith =>
      __$$_UserLogEntityCopyWithImpl<_$_UserLogEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserLogEntityToJson(
      this,
    );
  }
}

abstract class _UserLogEntity implements UserLogEntity {
  factory _UserLogEntity(
      {required final int pk,
      required final int sex,
      required final int age_group,
      required final String mac_address}) = _$_UserLogEntity;

  factory _UserLogEntity.fromJson(Map<String, dynamic> json) =
      _$_UserLogEntity.fromJson;

  @override
  int get pk;
  @override
  int get sex;
  @override
  int get age_group;
  @override
  String get mac_address;
  @override
  @JsonKey(ignore: true)
  _$$_UserLogEntityCopyWith<_$_UserLogEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
