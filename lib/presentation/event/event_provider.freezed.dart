// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'event_provider.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$EventListState {
  bool get isLoading => throw _privateConstructorUsedError;
  List<EventEntity> get events => throw _privateConstructorUsedError;
  dynamic get error => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $EventListStateCopyWith<EventListState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EventListStateCopyWith<$Res> {
  factory $EventListStateCopyWith(
          EventListState value, $Res Function(EventListState) then) =
      _$EventListStateCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<EventEntity> events, dynamic error});
}

/// @nodoc
class _$EventListStateCopyWithImpl<$Res>
    implements $EventListStateCopyWith<$Res> {
  _$EventListStateCopyWithImpl(this._value, this._then);

  final EventListState _value;
  // ignore: unused_field
  final $Res Function(EventListState) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? events = freezed,
    Object? error = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      events: events == freezed
          ? _value.events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventEntity>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc
abstract class _$$_EventListStateCopyWith<$Res>
    implements $EventListStateCopyWith<$Res> {
  factory _$$_EventListStateCopyWith(
          _$_EventListState value, $Res Function(_$_EventListState) then) =
      __$$_EventListStateCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<EventEntity> events, dynamic error});
}

/// @nodoc
class __$$_EventListStateCopyWithImpl<$Res>
    extends _$EventListStateCopyWithImpl<$Res>
    implements _$$_EventListStateCopyWith<$Res> {
  __$$_EventListStateCopyWithImpl(
      _$_EventListState _value, $Res Function(_$_EventListState) _then)
      : super(_value, (v) => _then(v as _$_EventListState));

  @override
  _$_EventListState get _value => super._value as _$_EventListState;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? events = freezed,
    Object? error = freezed,
  }) {
    return _then(_$_EventListState(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      events: events == freezed
          ? _value._events
          : events // ignore: cast_nullable_to_non_nullable
              as List<EventEntity>,
      error: error == freezed
          ? _value.error
          : error // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ));
  }
}

/// @nodoc

class _$_EventListState implements _EventListState {
  _$_EventListState(
      {required this.isLoading,
      required final List<EventEntity> events,
      this.error})
      : _events = events;

  @override
  final bool isLoading;
  final List<EventEntity> _events;
  @override
  List<EventEntity> get events {
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_events);
  }

  @override
  final dynamic error;

  @override
  String toString() {
    return 'EventListState(isLoading: $isLoading, events: $events, error: $error)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_EventListState &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other._events, _events) &&
            const DeepCollectionEquality().equals(other.error, error));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(_events),
      const DeepCollectionEquality().hash(error));

  @JsonKey(ignore: true)
  @override
  _$$_EventListStateCopyWith<_$_EventListState> get copyWith =>
      __$$_EventListStateCopyWithImpl<_$_EventListState>(this, _$identity);
}

abstract class _EventListState implements EventListState {
  factory _EventListState(
      {required final bool isLoading,
      required final List<EventEntity> events,
      final dynamic error}) = _$_EventListState;

  @override
  bool get isLoading;
  @override
  List<EventEntity> get events;
  @override
  dynamic get error;
  @override
  @JsonKey(ignore: true)
  _$$_EventListStateCopyWith<_$_EventListState> get copyWith =>
      throw _privateConstructorUsedError;
}
