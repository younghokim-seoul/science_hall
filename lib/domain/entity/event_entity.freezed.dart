// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_entity.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

EventEntity _$EventEntityFromJson(Map<String, dynamic> json) {
  return _EventEntity.fromJson(json);
}

/// @nodoc
mixin _$EventEntity {
  int get pk => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String get start_dt => throw _privateConstructorUsedError;
  String get end_dt => throw _privateConstructorUsedError;
  int get type => throw _privateConstructorUsedError;
  String? get explanation => throw _privateConstructorUsedError;
  String? get image => throw _privateConstructorUsedError;
  List<InnerExhibitionEntity> get inner_exhibition =>
      throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EventEntityCopyWith<EventEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventEntityCopyWith<$Res> {
  factory $EventEntityCopyWith(
          EventEntity value, $Res Function(EventEntity) then) =
      _$EventEntityCopyWithImpl<$Res>;
  $Res call(
      {int pk,
      String name,
      String start_dt,
      String end_dt,
      int type,
      String? explanation,
      String? image,
      List<InnerExhibitionEntity> inner_exhibition});
}

/// @nodoc
class _$EventEntityCopyWithImpl<$Res> implements $EventEntityCopyWith<$Res> {
  _$EventEntityCopyWithImpl(this._value, this._then);

  final EventEntity _value;
  // ignore: unused_field
  final $Res Function(EventEntity) _then;

  @override
  $Res call({
    Object? pk = freezed,
    Object? name = freezed,
    Object? start_dt = freezed,
    Object? end_dt = freezed,
    Object? type = freezed,
    Object? explanation = freezed,
    Object? image = freezed,
    Object? inner_exhibition = freezed,
  }) {
    return _then(_value.copyWith(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      start_dt: start_dt == freezed
          ? _value.start_dt
          : start_dt // ignore: cast_nullable_to_non_nullable
              as String,
      end_dt: end_dt == freezed
          ? _value.end_dt
          : end_dt // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      explanation: explanation == freezed
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      inner_exhibition: inner_exhibition == freezed
          ? _value.inner_exhibition
          : inner_exhibition // ignore: cast_nullable_to_non_nullable
              as List<InnerExhibitionEntity>,
    ));
  }
}

/// @nodoc
abstract class _$$_EventEntityCopyWith<$Res>
    implements $EventEntityCopyWith<$Res> {
  factory _$$_EventEntityCopyWith(
          _$_EventEntity value, $Res Function(_$_EventEntity) then) =
      __$$_EventEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int pk,
      String name,
      String start_dt,
      String end_dt,
      int type,
      String? explanation,
      String? image,
      List<InnerExhibitionEntity> inner_exhibition});
}

/// @nodoc
class __$$_EventEntityCopyWithImpl<$Res> extends _$EventEntityCopyWithImpl<$Res>
    implements _$$_EventEntityCopyWith<$Res> {
  __$$_EventEntityCopyWithImpl(
      _$_EventEntity _value, $Res Function(_$_EventEntity) _then)
      : super(_value, (v) => _then(v as _$_EventEntity));

  @override
  _$_EventEntity get _value => super._value as _$_EventEntity;

  @override
  $Res call({
    Object? pk = freezed,
    Object? name = freezed,
    Object? start_dt = freezed,
    Object? end_dt = freezed,
    Object? type = freezed,
    Object? explanation = freezed,
    Object? image = freezed,
    Object? inner_exhibition = freezed,
  }) {
    return _then(_$_EventEntity(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      start_dt: start_dt == freezed
          ? _value.start_dt
          : start_dt // ignore: cast_nullable_to_non_nullable
              as String,
      end_dt: end_dt == freezed
          ? _value.end_dt
          : end_dt // ignore: cast_nullable_to_non_nullable
              as String,
      type: type == freezed
          ? _value.type
          : type // ignore: cast_nullable_to_non_nullable
              as int,
      explanation: explanation == freezed
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String?,
      inner_exhibition: inner_exhibition == freezed
          ? _value._inner_exhibition
          : inner_exhibition // ignore: cast_nullable_to_non_nullable
              as List<InnerExhibitionEntity>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_EventEntity implements _EventEntity {
  _$_EventEntity(
      {required this.pk,
      required this.name,
      required this.start_dt,
      required this.end_dt,
      required this.type,
      required this.explanation,
      required this.image,
      required final List<InnerExhibitionEntity> inner_exhibition})
      : _inner_exhibition = inner_exhibition;

  factory _$_EventEntity.fromJson(Map<String, dynamic> json) =>
      _$$_EventEntityFromJson(json);

  @override
  final int pk;
  @override
  final String name;
  @override
  final String start_dt;
  @override
  final String end_dt;
  @override
  final int type;
  @override
  final String? explanation;
  @override
  final String? image;
  final List<InnerExhibitionEntity> _inner_exhibition;
  @override
  List<InnerExhibitionEntity> get inner_exhibition {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_inner_exhibition);
  }

  @override
  String toString() {
    return 'EventEntity(pk: $pk, name: $name, start_dt: $start_dt, end_dt: $end_dt, type: $type, explanation: $explanation, image: $image, inner_exhibition: $inner_exhibition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventEntity &&
            const DeepCollectionEquality().equals(other.pk, pk) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.start_dt, start_dt) &&
            const DeepCollectionEquality().equals(other.end_dt, end_dt) &&
            const DeepCollectionEquality().equals(other.type, type) &&
            const DeepCollectionEquality()
                .equals(other.explanation, explanation) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other._inner_exhibition, _inner_exhibition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pk),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(start_dt),
      const DeepCollectionEquality().hash(end_dt),
      const DeepCollectionEquality().hash(type),
      const DeepCollectionEquality().hash(explanation),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(_inner_exhibition));

  @JsonKey(ignore: true)
  @override
  _$$_EventEntityCopyWith<_$_EventEntity> get copyWith =>
      __$$_EventEntityCopyWithImpl<_$_EventEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EventEntityToJson(
      this,
    );
  }
}

abstract class _EventEntity implements EventEntity {
  factory _EventEntity(
          {required final int pk,
          required final String name,
          required final String start_dt,
          required final String end_dt,
          required final int type,
          required final String? explanation,
          required final String? image,
          required final List<InnerExhibitionEntity> inner_exhibition}) =
      _$_EventEntity;

  factory _EventEntity.fromJson(Map<String, dynamic> json) =
      _$_EventEntity.fromJson;

  @override
  int get pk;
  @override
  String get name;
  @override
  String get start_dt;
  @override
  String get end_dt;
  @override
  int get type;
  @override
  String? get explanation;
  @override
  String? get image;
  @override
  List<InnerExhibitionEntity> get inner_exhibition;
  @override
  @JsonKey(ignore: true)
  _$$_EventEntityCopyWith<_$_EventEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

InnerExhibitionEntity _$InnerExhibitionEntityFromJson(
    Map<String, dynamic> json) {
  return _InnerExhibitionEntity.fromJson(json);
}

/// @nodoc
mixin _$InnerExhibitionEntity {
  int get pk => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get vr_link => throw _privateConstructorUsedError;
  int get order => throw _privateConstructorUsedError;
  String? get explanation => throw _privateConstructorUsedError;
  String get image => throw _privateConstructorUsedError;
  String get x_coordinate => throw _privateConstructorUsedError;
  String get y_coordinate => throw _privateConstructorUsedError;
  ExhibitionEntity? get exhibition => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InnerExhibitionEntityCopyWith<InnerExhibitionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InnerExhibitionEntityCopyWith<$Res> {
  factory $InnerExhibitionEntityCopyWith(InnerExhibitionEntity value,
          $Res Function(InnerExhibitionEntity) then) =
      _$InnerExhibitionEntityCopyWithImpl<$Res>;
  $Res call(
      {int pk,
      String name,
      String? vr_link,
      int order,
      String? explanation,
      String image,
      String x_coordinate,
      String y_coordinate,
      ExhibitionEntity? exhibition});

  $ExhibitionEntityCopyWith<$Res>? get exhibition;
}

/// @nodoc
class _$InnerExhibitionEntityCopyWithImpl<$Res>
    implements $InnerExhibitionEntityCopyWith<$Res> {
  _$InnerExhibitionEntityCopyWithImpl(this._value, this._then);

  final InnerExhibitionEntity _value;
  // ignore: unused_field
  final $Res Function(InnerExhibitionEntity) _then;

  @override
  $Res call({
    Object? pk = freezed,
    Object? name = freezed,
    Object? vr_link = freezed,
    Object? order = freezed,
    Object? explanation = freezed,
    Object? image = freezed,
    Object? x_coordinate = freezed,
    Object? y_coordinate = freezed,
    Object? exhibition = freezed,
  }) {
    return _then(_value.copyWith(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      vr_link: vr_link == freezed
          ? _value.vr_link
          : vr_link // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      explanation: explanation == freezed
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      x_coordinate: x_coordinate == freezed
          ? _value.x_coordinate
          : x_coordinate // ignore: cast_nullable_to_non_nullable
              as String,
      y_coordinate: y_coordinate == freezed
          ? _value.y_coordinate
          : y_coordinate // ignore: cast_nullable_to_non_nullable
              as String,
      exhibition: exhibition == freezed
          ? _value.exhibition
          : exhibition // ignore: cast_nullable_to_non_nullable
              as ExhibitionEntity?,
    ));
  }

  @override
  $ExhibitionEntityCopyWith<$Res>? get exhibition {
    if (_value.exhibition == null) {
      return null;
    }

    return $ExhibitionEntityCopyWith<$Res>(_value.exhibition!, (value) {
      return _then(_value.copyWith(exhibition: value));
    });
  }
}

/// @nodoc
abstract class _$$_InnerExhibitionEntityCopyWith<$Res>
    implements $InnerExhibitionEntityCopyWith<$Res> {
  factory _$$_InnerExhibitionEntityCopyWith(_$_InnerExhibitionEntity value,
          $Res Function(_$_InnerExhibitionEntity) then) =
      __$$_InnerExhibitionEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int pk,
      String name,
      String? vr_link,
      int order,
      String? explanation,
      String image,
      String x_coordinate,
      String y_coordinate,
      ExhibitionEntity? exhibition});

  @override
  $ExhibitionEntityCopyWith<$Res>? get exhibition;
}

/// @nodoc
class __$$_InnerExhibitionEntityCopyWithImpl<$Res>
    extends _$InnerExhibitionEntityCopyWithImpl<$Res>
    implements _$$_InnerExhibitionEntityCopyWith<$Res> {
  __$$_InnerExhibitionEntityCopyWithImpl(_$_InnerExhibitionEntity _value,
      $Res Function(_$_InnerExhibitionEntity) _then)
      : super(_value, (v) => _then(v as _$_InnerExhibitionEntity));

  @override
  _$_InnerExhibitionEntity get _value =>
      super._value as _$_InnerExhibitionEntity;

  @override
  $Res call({
    Object? pk = freezed,
    Object? name = freezed,
    Object? vr_link = freezed,
    Object? order = freezed,
    Object? explanation = freezed,
    Object? image = freezed,
    Object? x_coordinate = freezed,
    Object? y_coordinate = freezed,
    Object? exhibition = freezed,
  }) {
    return _then(_$_InnerExhibitionEntity(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      vr_link: vr_link == freezed
          ? _value.vr_link
          : vr_link // ignore: cast_nullable_to_non_nullable
              as String?,
      order: order == freezed
          ? _value.order
          : order // ignore: cast_nullable_to_non_nullable
              as int,
      explanation: explanation == freezed
          ? _value.explanation
          : explanation // ignore: cast_nullable_to_non_nullable
              as String?,
      image: image == freezed
          ? _value.image
          : image // ignore: cast_nullable_to_non_nullable
              as String,
      x_coordinate: x_coordinate == freezed
          ? _value.x_coordinate
          : x_coordinate // ignore: cast_nullable_to_non_nullable
              as String,
      y_coordinate: y_coordinate == freezed
          ? _value.y_coordinate
          : y_coordinate // ignore: cast_nullable_to_non_nullable
              as String,
      exhibition: exhibition == freezed
          ? _value.exhibition
          : exhibition // ignore: cast_nullable_to_non_nullable
              as ExhibitionEntity?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InnerExhibitionEntity implements _InnerExhibitionEntity {
  _$_InnerExhibitionEntity(
      {required this.pk,
      required this.name,
      required this.vr_link,
      required this.order,
      required this.explanation,
      required this.image,
      required this.x_coordinate,
      required this.y_coordinate,
      required this.exhibition});

  factory _$_InnerExhibitionEntity.fromJson(Map<String, dynamic> json) =>
      _$$_InnerExhibitionEntityFromJson(json);

  @override
  final int pk;
  @override
  final String name;
  @override
  final String? vr_link;
  @override
  final int order;
  @override
  final String? explanation;
  @override
  final String image;
  @override
  final String x_coordinate;
  @override
  final String y_coordinate;
  @override
  final ExhibitionEntity? exhibition;

  @override
  String toString() {
    return 'InnerExhibitionEntity(pk: $pk, name: $name, vr_link: $vr_link, order: $order, explanation: $explanation, image: $image, x_coordinate: $x_coordinate, y_coordinate: $y_coordinate, exhibition: $exhibition)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_InnerExhibitionEntity &&
            const DeepCollectionEquality().equals(other.pk, pk) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.vr_link, vr_link) &&
            const DeepCollectionEquality().equals(other.order, order) &&
            const DeepCollectionEquality()
                .equals(other.explanation, explanation) &&
            const DeepCollectionEquality().equals(other.image, image) &&
            const DeepCollectionEquality()
                .equals(other.x_coordinate, x_coordinate) &&
            const DeepCollectionEquality()
                .equals(other.y_coordinate, y_coordinate) &&
            const DeepCollectionEquality()
                .equals(other.exhibition, exhibition));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pk),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(vr_link),
      const DeepCollectionEquality().hash(order),
      const DeepCollectionEquality().hash(explanation),
      const DeepCollectionEquality().hash(image),
      const DeepCollectionEquality().hash(x_coordinate),
      const DeepCollectionEquality().hash(y_coordinate),
      const DeepCollectionEquality().hash(exhibition));

  @JsonKey(ignore: true)
  @override
  _$$_InnerExhibitionEntityCopyWith<_$_InnerExhibitionEntity> get copyWith =>
      __$$_InnerExhibitionEntityCopyWithImpl<_$_InnerExhibitionEntity>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InnerExhibitionEntityToJson(
      this,
    );
  }
}

abstract class _InnerExhibitionEntity implements InnerExhibitionEntity {
  factory _InnerExhibitionEntity(
      {required final int pk,
      required final String name,
      required final String? vr_link,
      required final int order,
      required final String? explanation,
      required final String image,
      required final String x_coordinate,
      required final String y_coordinate,
      required final ExhibitionEntity? exhibition}) = _$_InnerExhibitionEntity;

  factory _InnerExhibitionEntity.fromJson(Map<String, dynamic> json) =
      _$_InnerExhibitionEntity.fromJson;

  @override
  int get pk;
  @override
  String get name;
  @override
  String? get vr_link;
  @override
  int get order;
  @override
  String? get explanation;
  @override
  String get image;
  @override
  String get x_coordinate;
  @override
  String get y_coordinate;
  @override
  ExhibitionEntity? get exhibition;
  @override
  @JsonKey(ignore: true)
  _$$_InnerExhibitionEntityCopyWith<_$_InnerExhibitionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

ExhibitionEntity _$ExhibitionEntityFromJson(Map<String, dynamic> json) {
  return _ExhibitionEntity.fromJson(json);
}

/// @nodoc
mixin _$ExhibitionEntity {
  int get pk => throw _privateConstructorUsedError;
  String get floor_ko => throw _privateConstructorUsedError;
  String get floor_en => throw _privateConstructorUsedError;
  String? get house_ko => throw _privateConstructorUsedError;
  String? get house_en => throw _privateConstructorUsedError;
  String? get drawing_image => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $ExhibitionEntityCopyWith<ExhibitionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ExhibitionEntityCopyWith<$Res> {
  factory $ExhibitionEntityCopyWith(
          ExhibitionEntity value, $Res Function(ExhibitionEntity) then) =
      _$ExhibitionEntityCopyWithImpl<$Res>;
  $Res call(
      {int pk,
      String floor_ko,
      String floor_en,
      String? house_ko,
      String? house_en,
      String? drawing_image});
}

/// @nodoc
class _$ExhibitionEntityCopyWithImpl<$Res>
    implements $ExhibitionEntityCopyWith<$Res> {
  _$ExhibitionEntityCopyWithImpl(this._value, this._then);

  final ExhibitionEntity _value;
  // ignore: unused_field
  final $Res Function(ExhibitionEntity) _then;

  @override
  $Res call({
    Object? pk = freezed,
    Object? floor_ko = freezed,
    Object? floor_en = freezed,
    Object? house_ko = freezed,
    Object? house_en = freezed,
    Object? drawing_image = freezed,
  }) {
    return _then(_value.copyWith(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int,
      floor_ko: floor_ko == freezed
          ? _value.floor_ko
          : floor_ko // ignore: cast_nullable_to_non_nullable
              as String,
      floor_en: floor_en == freezed
          ? _value.floor_en
          : floor_en // ignore: cast_nullable_to_non_nullable
              as String,
      house_ko: house_ko == freezed
          ? _value.house_ko
          : house_ko // ignore: cast_nullable_to_non_nullable
              as String?,
      house_en: house_en == freezed
          ? _value.house_en
          : house_en // ignore: cast_nullable_to_non_nullable
              as String?,
      drawing_image: drawing_image == freezed
          ? _value.drawing_image
          : drawing_image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$$_ExhibitionEntityCopyWith<$Res>
    implements $ExhibitionEntityCopyWith<$Res> {
  factory _$$_ExhibitionEntityCopyWith(
          _$_ExhibitionEntity value, $Res Function(_$_ExhibitionEntity) then) =
      __$$_ExhibitionEntityCopyWithImpl<$Res>;
  @override
  $Res call(
      {int pk,
      String floor_ko,
      String floor_en,
      String? house_ko,
      String? house_en,
      String? drawing_image});
}

/// @nodoc
class __$$_ExhibitionEntityCopyWithImpl<$Res>
    extends _$ExhibitionEntityCopyWithImpl<$Res>
    implements _$$_ExhibitionEntityCopyWith<$Res> {
  __$$_ExhibitionEntityCopyWithImpl(
      _$_ExhibitionEntity _value, $Res Function(_$_ExhibitionEntity) _then)
      : super(_value, (v) => _then(v as _$_ExhibitionEntity));

  @override
  _$_ExhibitionEntity get _value => super._value as _$_ExhibitionEntity;

  @override
  $Res call({
    Object? pk = freezed,
    Object? floor_ko = freezed,
    Object? floor_en = freezed,
    Object? house_ko = freezed,
    Object? house_en = freezed,
    Object? drawing_image = freezed,
  }) {
    return _then(_$_ExhibitionEntity(
      pk: pk == freezed
          ? _value.pk
          : pk // ignore: cast_nullable_to_non_nullable
              as int,
      floor_ko: floor_ko == freezed
          ? _value.floor_ko
          : floor_ko // ignore: cast_nullable_to_non_nullable
              as String,
      floor_en: floor_en == freezed
          ? _value.floor_en
          : floor_en // ignore: cast_nullable_to_non_nullable
              as String,
      house_ko: house_ko == freezed
          ? _value.house_ko
          : house_ko // ignore: cast_nullable_to_non_nullable
              as String?,
      house_en: house_en == freezed
          ? _value.house_en
          : house_en // ignore: cast_nullable_to_non_nullable
              as String?,
      drawing_image: drawing_image == freezed
          ? _value.drawing_image
          : drawing_image // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_ExhibitionEntity implements _ExhibitionEntity {
  _$_ExhibitionEntity(
      {required this.pk,
      required this.floor_ko,
      required this.floor_en,
      required this.house_ko,
      required this.house_en,
      required this.drawing_image});

  factory _$_ExhibitionEntity.fromJson(Map<String, dynamic> json) =>
      _$$_ExhibitionEntityFromJson(json);

  @override
  final int pk;
  @override
  final String floor_ko;
  @override
  final String floor_en;
  @override
  final String? house_ko;
  @override
  final String? house_en;
  @override
  final String? drawing_image;

  @override
  String toString() {
    return 'ExhibitionEntity(pk: $pk, floor_ko: $floor_ko, floor_en: $floor_en, house_ko: $house_ko, house_en: $house_en, drawing_image: $drawing_image)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_ExhibitionEntity &&
            const DeepCollectionEquality().equals(other.pk, pk) &&
            const DeepCollectionEquality().equals(other.floor_ko, floor_ko) &&
            const DeepCollectionEquality().equals(other.floor_en, floor_en) &&
            const DeepCollectionEquality().equals(other.house_ko, house_ko) &&
            const DeepCollectionEquality().equals(other.house_en, house_en) &&
            const DeepCollectionEquality()
                .equals(other.drawing_image, drawing_image));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(pk),
      const DeepCollectionEquality().hash(floor_ko),
      const DeepCollectionEquality().hash(floor_en),
      const DeepCollectionEquality().hash(house_ko),
      const DeepCollectionEquality().hash(house_en),
      const DeepCollectionEquality().hash(drawing_image));

  @JsonKey(ignore: true)
  @override
  _$$_ExhibitionEntityCopyWith<_$_ExhibitionEntity> get copyWith =>
      __$$_ExhibitionEntityCopyWithImpl<_$_ExhibitionEntity>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_ExhibitionEntityToJson(
      this,
    );
  }
}

abstract class _ExhibitionEntity implements ExhibitionEntity {
  factory _ExhibitionEntity(
      {required final int pk,
      required final String floor_ko,
      required final String floor_en,
      required final String? house_ko,
      required final String? house_en,
      required final String? drawing_image}) = _$_ExhibitionEntity;

  factory _ExhibitionEntity.fromJson(Map<String, dynamic> json) =
      _$_ExhibitionEntity.fromJson;

  @override
  int get pk;
  @override
  String get floor_ko;
  @override
  String get floor_en;
  @override
  String? get house_ko;
  @override
  String? get house_en;
  @override
  String? get drawing_image;
  @override
  @JsonKey(ignore: true)
  _$$_ExhibitionEntityCopyWith<_$_ExhibitionEntity> get copyWith =>
      throw _privateConstructorUsedError;
}
