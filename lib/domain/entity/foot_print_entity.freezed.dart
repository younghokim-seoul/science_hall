// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'foot_print_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

FootPrintEntity _$FootPrintEntityFromJson(Map<String, dynamic> json) {
  return _FootPrintEntity.fromJson(json);
}

/// @nodoc
mixin _$FootPrintEntity {
  List<int> get result => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $FootPrintEntityCopyWith<FootPrintEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FootPrintEntityCopyWith<$Res> {
  factory $FootPrintEntityCopyWith(
          FootPrintEntity value, $Res Function(FootPrintEntity) then) =
      _$FootPrintEntityCopyWithImpl<$Res>;
  $Res call({List<int> result});
}

/// @nodoc
class _$FootPrintEntityCopyWithImpl<$Res>
    implements $FootPrintEntityCopyWith<$Res> {
  _$FootPrintEntityCopyWithImpl(this._value, this._then);

  final FootPrintEntity _value;
  // ignore: unused_field
  final $Res Function(FootPrintEntity) _then;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_value.copyWith(
      result: result == freezed
          ? _value.result
          : result // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
abstract class _$$_FootPrintEntityCopyWith<$Res>
    implements $FootPrintEntityCopyWith<$Res> {
  factory _$$_FootPrintEntityCopyWith(
          _$_FootPrintEntity value, $Res Function(_$_FootPrintEntity) then) =
      __$$_FootPrintEntityCopyWithImpl<$Res>;
  @override
  $Res call({List<int> result});
}

/// @nodoc
class __$$_FootPrintEntityCopyWithImpl<$Res>
    extends _$FootPrintEntityCopyWithImpl<$Res>
    implements _$$_FootPrintEntityCopyWith<$Res> {
  __$$_FootPrintEntityCopyWithImpl(
      _$_FootPrintEntity _value, $Res Function(_$_FootPrintEntity) _then)
      : super(_value, (v) => _then(v as _$_FootPrintEntity));

  @override
  _$_FootPrintEntity get _value => super._value as _$_FootPrintEntity;

  @override
  $Res call({
    Object? result = freezed,
  }) {
    return _then(_$_FootPrintEntity(
      result: result == freezed
          ? _value._result
          : result // ignore: cast_nullable_to_non_nullable
              as List<int>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_FootPrintEntity implements _FootPrintEntity {
  _$_FootPrintEntity({required final List<int> result}) : _result = result;

  factory _$_FootPrintEntity.fromJson(Map<String, dynamic> json) =>
      _$$_FootPrintEntityFromJson(json);

  final List<int> _result;
  @override
  List<int> get result {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_result);
  }

  @override
  String toString() {
    return 'FootPrintEntity(result: $result)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FootPrintEntity &&
            const DeepCollectionEquality().equals(other._result, _result));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_result));

  @JsonKey(ignore: true)
  @override
  _$$_FootPrintEntityCopyWith<_$_FootPrintEntity> get copyWith =>
      __$$_FootPrintEntityCopyWithImpl<_$_FootPrintEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_FootPrintEntityToJson(
      this,
    );
  }
}

abstract class _FootPrintEntity implements FootPrintEntity {
  factory _FootPrintEntity({required final List<int> result}) =
      _$_FootPrintEntity;

  factory _FootPrintEntity.fromJson(Map<String, dynamic> json) =
      _$_FootPrintEntity.fromJson;

  @override
  List<int> get result;
  @override
  @JsonKey(ignore: true)
  _$$_FootPrintEntityCopyWith<_$_FootPrintEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
