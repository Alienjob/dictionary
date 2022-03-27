// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'progress_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$ProgressTearOff {
  const _$ProgressTearOff();

  _Progress call({required int remember, required int forget}) {
    return _Progress(
      remember: remember,
      forget: forget,
    );
  }
}

/// @nodoc
const $Progress = _$ProgressTearOff();

/// @nodoc
mixin _$Progress {
  int get remember => throw _privateConstructorUsedError;
  int get forget => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $ProgressCopyWith<Progress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ProgressCopyWith<$Res> {
  factory $ProgressCopyWith(Progress value, $Res Function(Progress) then) =
      _$ProgressCopyWithImpl<$Res>;
  $Res call({int remember, int forget});
}

/// @nodoc
class _$ProgressCopyWithImpl<$Res> implements $ProgressCopyWith<$Res> {
  _$ProgressCopyWithImpl(this._value, this._then);

  final Progress _value;
  // ignore: unused_field
  final $Res Function(Progress) _then;

  @override
  $Res call({
    Object? remember = freezed,
    Object? forget = freezed,
  }) {
    return _then(_value.copyWith(
      remember: remember == freezed
          ? _value.remember
          : remember // ignore: cast_nullable_to_non_nullable
              as int,
      forget: forget == freezed
          ? _value.forget
          : forget // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$ProgressCopyWith<$Res> implements $ProgressCopyWith<$Res> {
  factory _$ProgressCopyWith(_Progress value, $Res Function(_Progress) then) =
      __$ProgressCopyWithImpl<$Res>;
  @override
  $Res call({int remember, int forget});
}

/// @nodoc
class __$ProgressCopyWithImpl<$Res> extends _$ProgressCopyWithImpl<$Res>
    implements _$ProgressCopyWith<$Res> {
  __$ProgressCopyWithImpl(_Progress _value, $Res Function(_Progress) _then)
      : super(_value, (v) => _then(v as _Progress));

  @override
  _Progress get _value => super._value as _Progress;

  @override
  $Res call({
    Object? remember = freezed,
    Object? forget = freezed,
  }) {
    return _then(_Progress(
      remember: remember == freezed
          ? _value.remember
          : remember // ignore: cast_nullable_to_non_nullable
              as int,
      forget: forget == freezed
          ? _value.forget
          : forget // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_Progress implements _Progress {
  _$_Progress({required this.remember, required this.forget});

  @override
  final int remember;
  @override
  final int forget;

  @override
  String toString() {
    return 'Progress(remember: $remember, forget: $forget)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Progress &&
            const DeepCollectionEquality().equals(other.remember, remember) &&
            const DeepCollectionEquality().equals(other.forget, forget));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(remember),
      const DeepCollectionEquality().hash(forget));

  @JsonKey(ignore: true)
  @override
  _$ProgressCopyWith<_Progress> get copyWith =>
      __$ProgressCopyWithImpl<_Progress>(this, _$identity);
}

abstract class _Progress implements Progress {
  factory _Progress({required int remember, required int forget}) = _$_Progress;

  @override
  int get remember;
  @override
  int get forget;
  @override
  @JsonKey(ignore: true)
  _$ProgressCopyWith<_Progress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$DaylyProgressTearOff {
  const _$DaylyProgressTearOff();

  _DaylyProgress call({required Map<int, Progress> data}) {
    return _DaylyProgress(
      data: data,
    );
  }
}

/// @nodoc
const $DaylyProgress = _$DaylyProgressTearOff();

/// @nodoc
mixin _$DaylyProgress {
  Map<int, Progress> get data => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $DaylyProgressCopyWith<DaylyProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DaylyProgressCopyWith<$Res> {
  factory $DaylyProgressCopyWith(
          DaylyProgress value, $Res Function(DaylyProgress) then) =
      _$DaylyProgressCopyWithImpl<$Res>;
  $Res call({Map<int, Progress> data});
}

/// @nodoc
class _$DaylyProgressCopyWithImpl<$Res>
    implements $DaylyProgressCopyWith<$Res> {
  _$DaylyProgressCopyWithImpl(this._value, this._then);

  final DaylyProgress _value;
  // ignore: unused_field
  final $Res Function(DaylyProgress) _then;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_value.copyWith(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<int, Progress>,
    ));
  }
}

/// @nodoc
abstract class _$DaylyProgressCopyWith<$Res>
    implements $DaylyProgressCopyWith<$Res> {
  factory _$DaylyProgressCopyWith(
          _DaylyProgress value, $Res Function(_DaylyProgress) then) =
      __$DaylyProgressCopyWithImpl<$Res>;
  @override
  $Res call({Map<int, Progress> data});
}

/// @nodoc
class __$DaylyProgressCopyWithImpl<$Res>
    extends _$DaylyProgressCopyWithImpl<$Res>
    implements _$DaylyProgressCopyWith<$Res> {
  __$DaylyProgressCopyWithImpl(
      _DaylyProgress _value, $Res Function(_DaylyProgress) _then)
      : super(_value, (v) => _then(v as _DaylyProgress));

  @override
  _DaylyProgress get _value => super._value as _DaylyProgress;

  @override
  $Res call({
    Object? data = freezed,
  }) {
    return _then(_DaylyProgress(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as Map<int, Progress>,
    ));
  }
}

/// @nodoc

class _$_DaylyProgress implements _DaylyProgress {
  _$_DaylyProgress({required this.data});

  @override
  final Map<int, Progress> data;

  @override
  String toString() {
    return 'DaylyProgress(data: $data)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DaylyProgress &&
            const DeepCollectionEquality().equals(other.data, data));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(data));

  @JsonKey(ignore: true)
  @override
  _$DaylyProgressCopyWith<_DaylyProgress> get copyWith =>
      __$DaylyProgressCopyWithImpl<_DaylyProgress>(this, _$identity);
}

abstract class _DaylyProgress implements DaylyProgress {
  factory _DaylyProgress({required Map<int, Progress> data}) = _$_DaylyProgress;

  @override
  Map<int, Progress> get data;
  @override
  @JsonKey(ignore: true)
  _$DaylyProgressCopyWith<_DaylyProgress> get copyWith =>
      throw _privateConstructorUsedError;
}
