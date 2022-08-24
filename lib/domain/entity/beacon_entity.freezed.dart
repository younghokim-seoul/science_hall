// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'beacon_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BeaconEntity _$BeaconEntityFromJson(Map<String, dynamic> json) {
  return _BeaconEntity.fromJson(json);
}

/// @nodoc
mixin _$BeaconEntity {
  int get pk => throw _privateConstructorUsedError;
  InnerExhibitionEntity get inner_exhibition =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BeaconEntityCopyWith<BeaconEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BeaconEntityCopyWith<$Res> {
  factory $BeaconEntityCopyWith(
          BeaconEntity value, $Res Function(BeaconEntity) then) =
      _$BeaconEntityCopyWithImpl<$Res>;
  $Res call({int pk, InnerExhibitionEntity inner_exhibition});

  $InnerExhibitionEntityCopyWith<$Res> get inner_exhibition;
}

/// @nodoc
class _$BeaconEntityCopyWithImpl<$Res> implements $BeaconEntityCopyWith<$Res> {
  _$BeaconEntityCopyWithImpl(this._value, this._then);

  final BeaconEntity _value;
  // ignore: unused_field
  final $Res Function(BeaconEntity) _then;

  @override
  $Res call({
    Object? pk = freezed,
    Object? inner_exhibition = freezed,
  }) {
    return _then(_value.copyWith(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int,
      inner_exhibition: inner_exhibition == freezed
          ? _value.inner_exhibition
          : inner_exhibition // ignore: cast_nullable_to_non_nullable
              as InnerExhibitionEntity,
    ));
  }

  @override
  $InnerExhibitionEntityCopyWith<$Res> get inner_exhibition {
    return $InnerExhibitionEntityCopyWith<$Res>(_value.inner_exhibition,
        (value) {
      return _then(_value.copyWith(inner_exhibition: value));
    });
  }
}

/// @nodoc
abstract class _$$_BeaconEntityCopyWith<$Res>
    implements $BeaconEntityCopyWith<$Res> {
  factory _$$_BeaconEntityCopyWith(
          _$_BeaconEntity value, $Res Function(_$_BeaconEntity) then) =
      __$$_BeaconEntityCopyWithImpl<$Res>;
  @override
  $Res call({int pk, InnerExhibitionEntity inner_exhibition});

  @override
  $InnerExhibitionEntityCopyWith<$Res> get inner_exhibition;
}

/// @nodoc
class __$$_BeaconEntityCopyWithImpl<$Res>
    extends _$BeaconEntityCopyWithImpl<$Res>
    implements _$$_BeaconEntityCopyWith<$Res> {
  __$$_BeaconEntityCopyWithImpl(
      _$_BeaconEntity _value, $Res Function(_$_BeaconEntity) _then)
      : super(_value, (v) => _then(v as _$_BeaconEntity));

  @override
  _$_BeaconEntity get _value => super._value as _$_BeaconEntity;

  @override
  $Res call({
    Object? pk = freezed,
    Object? inner_exhibition = freezed,
  }) {
    return _then(_$_BeaconEntity(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int,
      inner_exhibition: inner_exhibition == freezed
          ? _value.inner_exhibition
          : inner_exhibition // ignore: cast_nullable_to_non_nullable
              as InnerExhibitionEntity,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BeaconEntity implements _BeaconEntity {
  _$_BeaconEntity({required this.pk, required this.inner_exhibition});

  factory _$_BeaconEntity.fromJson(Map<String, dynamic> json) =>
      _$$_BeaconEntityFromJson(json);

  @override
  final int pk;
  @override
  final InnerExhibitionEntity inner_exhibition;

  @override
  String toString() {
    return 'BeaconEntity(pk: $pk, inner_exhibition: $inner_exhibition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BeaconEntity &&
            const DeepCollectionEquality().equals(other.pk, pk) &&
            const DeepCollectionEquality()
                .equals(other.inner_exhibition, inner_exhibition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pk),
      const DeepCollectionEquality().hash(inner_exhibition));

  @JsonKey(ignore: true)
  @override
  _$$_BeaconEntityCopyWith<_$_BeaconEntity> get copyWith =>
      __$$_BeaconEntityCopyWithImpl<_$_BeaconEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BeaconEntityToJson(
      this,
    );
  }
}

abstract class _BeaconEntity implements BeaconEntity {
  factory _BeaconEntity(
      {required final int pk,
      required final InnerExhibitionEntity inner_exhibition}) = _$_BeaconEntity;

  factory _BeaconEntity.fromJson(Map<String, dynamic> json) =
      _$_BeaconEntity.fromJson;

  @override
  int get pk;
  @override
  InnerExhibitionEntity get inner_exhibition;
  @override
  @JsonKey(ignore: true)
  _$$_BeaconEntityCopyWith<_$_BeaconEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
