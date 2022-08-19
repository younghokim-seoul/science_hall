// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'token_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TokenEntity _$TokenEntityFromJson(Map<String, dynamic> json) {
  return _TokenEntity.fromJson(json);
}

/// @nodoc
mixin _$TokenEntity {
  String get refresh => throw _privateConstructorUsedError;
  String get access => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $TokenEntityCopyWith<TokenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TokenEntityCopyWith<$Res> {
  factory $TokenEntityCopyWith(
          TokenEntity value, $Res Function(TokenEntity) then) =
      _$TokenEntityCopyWithImpl<$Res>;
  $Res call({String refresh, String access});
}

/// @nodoc
class _$TokenEntityCopyWithImpl<$Res> implements $TokenEntityCopyWith<$Res> {
  _$TokenEntityCopyWithImpl(this._value, this._then);

  final TokenEntity _value;
  // ignore: unused_field
  final $Res Function(TokenEntity) _then;

  @override
  $Res call({
    Object? refresh = freezed,
    Object? access = freezed,
  }) {
    return _then(_value.copyWith(
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
      access: access == freezed
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_TokenEntityCopyWith<$Res>
    implements $TokenEntityCopyWith<$Res> {
  factory _$$_TokenEntityCopyWith(
          _$_TokenEntity value, $Res Function(_$_TokenEntity) then) =
      __$$_TokenEntityCopyWithImpl<$Res>;
  @override
  $Res call({String refresh, String access});
}

/// @nodoc
class __$$_TokenEntityCopyWithImpl<$Res> extends _$TokenEntityCopyWithImpl<$Res>
    implements _$$_TokenEntityCopyWith<$Res> {
  __$$_TokenEntityCopyWithImpl(
      _$_TokenEntity _value, $Res Function(_$_TokenEntity) _then)
      : super(_value, (v) => _then(v as _$_TokenEntity));

  @override
  _$_TokenEntity get _value => super._value as _$_TokenEntity;

  @override
  $Res call({
    Object? refresh = freezed,
    Object? access = freezed,
  }) {
    return _then(_$_TokenEntity(
      refresh: refresh == freezed
          ? _value.refresh
          : refresh // ignore: cast_nullable_to_non_nullable
              as String,
      access: access == freezed
          ? _value.access
          : access // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_TokenEntity implements _TokenEntity {
  _$_TokenEntity({required this.refresh, required this.access});

  factory _$_TokenEntity.fromJson(Map<String, dynamic> json) =>
      _$$_TokenEntityFromJson(json);

  @override
  final String refresh;
  @override
  final String access;

  @override
  String toString() {
    return 'TokenEntity(refresh: $refresh, access: $access)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_TokenEntity &&
            const DeepCollectionEquality().equals(other.refresh, refresh) &&
            const DeepCollectionEquality().equals(other.access, access));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(refresh),
      const DeepCollectionEquality().hash(access));

  @JsonKey(ignore: true)
  @override
  _$$_TokenEntityCopyWith<_$_TokenEntity> get copyWith =>
      __$$_TokenEntityCopyWithImpl<_$_TokenEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_TokenEntityToJson(
      this,
    );
  }
}

abstract class _TokenEntity implements TokenEntity {
  factory _TokenEntity(
      {required final String refresh,
      required final String access}) = _$_TokenEntity;

  factory _TokenEntity.fromJson(Map<String, dynamic> json) =
      _$_TokenEntity.fromJson;

  @override
  String get refresh;
  @override
  String get access;
  @override
  @JsonKey(ignore: true)
  _$$_TokenEntityCopyWith<_$_TokenEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
