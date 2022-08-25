// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'survey_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SurveyEntity _$SurveyEntityFromJson(Map<String, dynamic> json) {
  return _SurveyEntity.fromJson(json);
}

/// @nodoc
mixin _$SurveyEntity {
  int get sex => throw _privateConstructorUsedError;
  int get age_group => throw _privateConstructorUsedError;
  String get mac_address => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SurveyEntityCopyWith<SurveyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SurveyEntityCopyWith<$Res> {
  factory $SurveyEntityCopyWith(
          SurveyEntity value, $Res Function(SurveyEntity) then) =
      _$SurveyEntityCopyWithImpl<$Res>;
  $Res call({int sex, int age_group, String mac_address});
}

/// @nodoc
class _$SurveyEntityCopyWithImpl<$Res> implements $SurveyEntityCopyWith<$Res> {
  _$SurveyEntityCopyWithImpl(this._value, this._then);

  final SurveyEntity _value;
  // ignore: unused_field
  final $Res Function(SurveyEntity) _then;

  @override
  $Res call({
    Object? sex = freezed,
    Object? age_group = freezed,
    Object? mac_address = freezed,
  }) {
    return _then(_value.copyWith(
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
abstract class _$$_SurveyEntityCopyWith<$Res>
    implements $SurveyEntityCopyWith<$Res> {
  factory _$$_SurveyEntityCopyWith(
          _$_SurveyEntity value, $Res Function(_$_SurveyEntity) then) =
      __$$_SurveyEntityCopyWithImpl<$Res>;
  @override
  $Res call({int sex, int age_group, String mac_address});
}

/// @nodoc
class __$$_SurveyEntityCopyWithImpl<$Res>
    extends _$SurveyEntityCopyWithImpl<$Res>
    implements _$$_SurveyEntityCopyWith<$Res> {
  __$$_SurveyEntityCopyWithImpl(
      _$_SurveyEntity _value, $Res Function(_$_SurveyEntity) _then)
      : super(_value, (v) => _then(v as _$_SurveyEntity));

  @override
  _$_SurveyEntity get _value => super._value as _$_SurveyEntity;

  @override
  $Res call({
    Object? sex = freezed,
    Object? age_group = freezed,
    Object? mac_address = freezed,
  }) {
    return _then(_$_SurveyEntity(
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
class _$_SurveyEntity implements _SurveyEntity {
  _$_SurveyEntity(
      {required this.sex, required this.age_group, required this.mac_address});

  factory _$_SurveyEntity.fromJson(Map<String, dynamic> json) =>
      _$$_SurveyEntityFromJson(json);

  @override
  final int sex;
  @override
  final int age_group;
  @override
  final String mac_address;

  @override
  String toString() {
    return 'SurveyEntity(sex: $sex, age_group: $age_group, mac_address: $mac_address)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SurveyEntity &&
            const DeepCollectionEquality().equals(other.sex, sex) &&
            const DeepCollectionEquality().equals(other.age_group, age_group) &&
            const DeepCollectionEquality()
                .equals(other.mac_address, mac_address));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(sex),
      const DeepCollectionEquality().hash(age_group),
      const DeepCollectionEquality().hash(mac_address));

  @JsonKey(ignore: true)
  @override
  _$$_SurveyEntityCopyWith<_$_SurveyEntity> get copyWith =>
      __$$_SurveyEntityCopyWithImpl<_$_SurveyEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SurveyEntityToJson(
      this,
    );
  }
}

abstract class _SurveyEntity implements SurveyEntity {
  factory _SurveyEntity(
      {required final int sex,
      required final int age_group,
      required final String mac_address}) = _$_SurveyEntity;

  factory _SurveyEntity.fromJson(Map<String, dynamic> json) =
      _$_SurveyEntity.fromJson;

  @override
  int get sex;
  @override
  int get age_group;
  @override
  String get mac_address;
  @override
  @JsonKey(ignore: true)
  _$$_SurveyEntityCopyWith<_$_SurveyEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
