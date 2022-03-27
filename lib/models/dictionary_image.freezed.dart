// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dictionary_image.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

DictionaryImage _$DictionaryImageFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _DictionaryImage.fromJson(json);
    case 'empty':
      return _Empty.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'DictionaryImage',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$DictionaryImageTearOff {
  const _$DictionaryImageTearOff();

  _DictionaryImage call(
      {required String path, required DictionaryImagePathType pathType}) {
    return _DictionaryImage(
      path: path,
      pathType: pathType,
    );
  }

  _Empty empty() {
    return _Empty();
  }

  DictionaryImage fromJson(Map<String, Object?> json) {
    return DictionaryImage.fromJson(json);
  }
}

/// @nodoc
const $DictionaryImage = _$DictionaryImageTearOff();

/// @nodoc
mixin _$DictionaryImage {
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String path, DictionaryImagePathType pathType) $default, {
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String path, DictionaryImagePathType pathType)? $default, {
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String path, DictionaryImagePathType pathType)? $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DictionaryImage value) $default, {
    required TResult Function(_Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_DictionaryImage value)? $default, {
    TResult Function(_Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DictionaryImage value)? $default, {
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryImageCopyWith<$Res> {
  factory $DictionaryImageCopyWith(
          DictionaryImage value, $Res Function(DictionaryImage) then) =
      _$DictionaryImageCopyWithImpl<$Res>;
}

/// @nodoc
class _$DictionaryImageCopyWithImpl<$Res>
    implements $DictionaryImageCopyWith<$Res> {
  _$DictionaryImageCopyWithImpl(this._value, this._then);

  final DictionaryImage _value;
  // ignore: unused_field
  final $Res Function(DictionaryImage) _then;
}

/// @nodoc
abstract class _$DictionaryImageCopyWith<$Res> {
  factory _$DictionaryImageCopyWith(
          _DictionaryImage value, $Res Function(_DictionaryImage) then) =
      __$DictionaryImageCopyWithImpl<$Res>;
  $Res call({String path, DictionaryImagePathType pathType});
}

/// @nodoc
class __$DictionaryImageCopyWithImpl<$Res>
    extends _$DictionaryImageCopyWithImpl<$Res>
    implements _$DictionaryImageCopyWith<$Res> {
  __$DictionaryImageCopyWithImpl(
      _DictionaryImage _value, $Res Function(_DictionaryImage) _then)
      : super(_value, (v) => _then(v as _DictionaryImage));

  @override
  _DictionaryImage get _value => super._value as _DictionaryImage;

  @override
  $Res call({
    Object? path = freezed,
    Object? pathType = freezed,
  }) {
    return _then(_DictionaryImage(
      path: path == freezed
          ? _value.path
          : path // ignore: cast_nullable_to_non_nullable
              as String,
      pathType: pathType == freezed
          ? _value.pathType
          : pathType // ignore: cast_nullable_to_non_nullable
              as DictionaryImagePathType,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_DictionaryImage extends _DictionaryImage {
  _$_DictionaryImage(
      {required this.path, required this.pathType, String? $type})
      : $type = $type ?? 'default',
        super._();

  factory _$_DictionaryImage.fromJson(Map<String, dynamic> json) =>
      _$$_DictionaryImageFromJson(json);

  @override
  final String path;
  @override
  final DictionaryImagePathType pathType;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DictionaryImage(path: $path, pathType: $pathType)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _DictionaryImage &&
            const DeepCollectionEquality().equals(other.path, path) &&
            const DeepCollectionEquality().equals(other.pathType, pathType));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(path),
      const DeepCollectionEquality().hash(pathType));

  @JsonKey(ignore: true)
  @override
  _$DictionaryImageCopyWith<_DictionaryImage> get copyWith =>
      __$DictionaryImageCopyWithImpl<_DictionaryImage>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String path, DictionaryImagePathType pathType) $default, {
    required TResult Function() empty,
  }) {
    return $default(path, pathType);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String path, DictionaryImagePathType pathType)? $default, {
    TResult Function()? empty,
  }) {
    return $default?.call(path, pathType);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String path, DictionaryImagePathType pathType)? $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(path, pathType);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DictionaryImage value) $default, {
    required TResult Function(_Empty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_DictionaryImage value)? $default, {
    TResult Function(_Empty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DictionaryImage value)? $default, {
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_DictionaryImageToJson(this);
  }
}

abstract class _DictionaryImage extends DictionaryImage {
  factory _DictionaryImage(
      {required String path,
      required DictionaryImagePathType pathType}) = _$_DictionaryImage;
  _DictionaryImage._() : super._();

  factory _DictionaryImage.fromJson(Map<String, dynamic> json) =
      _$_DictionaryImage.fromJson;

  String get path;
  DictionaryImagePathType get pathType;
  @JsonKey(ignore: true)
  _$DictionaryImageCopyWith<_DictionaryImage> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$DictionaryImageCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;
}

/// @nodoc
@JsonSerializable()
class _$_Empty extends _Empty {
  _$_Empty({String? $type})
      : $type = $type ?? 'empty',
        super._();

  factory _$_Empty.fromJson(Map<String, dynamic> json) =>
      _$$_EmptyFromJson(json);

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'DictionaryImage.empty()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _Empty);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(String path, DictionaryImagePathType pathType) $default, {
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(String path, DictionaryImagePathType pathType)? $default, {
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(String path, DictionaryImagePathType pathType)? $default, {
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_DictionaryImage value) $default, {
    required TResult Function(_Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_DictionaryImage value)? $default, {
    TResult Function(_Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_DictionaryImage value)? $default, {
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }

  @override
  Map<String, dynamic> toJson() {
    return _$$_EmptyToJson(this);
  }
}

abstract class _Empty extends DictionaryImage {
  factory _Empty() = _$_Empty;
  _Empty._() : super._();

  factory _Empty.fromJson(Map<String, dynamic> json) = _$_Empty.fromJson;
}
