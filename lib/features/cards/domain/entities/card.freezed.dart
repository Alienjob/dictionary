// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'card.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CardDataTearOff {
  const _$CardDataTearOff();

  _Data fromData(
      {required String key,
      required String question,
      required String context,
      required String answer,
      required String img,
      required String transcription,
      required String transcriptionAnswer}) {
    return _Data(
      key: key,
      question: question,
      context: context,
      answer: answer,
      img: img,
      transcription: transcription,
      transcriptionAnswer: transcriptionAnswer,
    );
  }

  _Empty empty() {
    return const _Empty();
  }
}

/// @nodoc
const $CardData = _$CardDataTearOff();

/// @nodoc
mixin _$CardData {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String key,
            String question,
            String context,
            String answer,
            String img,
            String transcription,
            String transcriptionAnswer)
        fromData,
    required TResult Function() empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String key, String question, String context, String answer,
            String img, String transcription, String transcriptionAnswer)?
        fromData,
    TResult Function()? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key, String question, String context, String answer,
            String img, String transcription, String transcriptionAnswer)?
        fromData,
    TResult Function()? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) fromData,
    required TResult Function(_Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Data value)? fromData,
    TResult Function(_Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? fromData,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardDataCopyWith<$Res> {
  factory $CardDataCopyWith(CardData value, $Res Function(CardData) then) =
      _$CardDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardDataCopyWithImpl<$Res> implements $CardDataCopyWith<$Res> {
  _$CardDataCopyWithImpl(this._value, this._then);

  final CardData _value;
  // ignore: unused_field
  final $Res Function(CardData) _then;
}

/// @nodoc
abstract class _$DataCopyWith<$Res> {
  factory _$DataCopyWith(_Data value, $Res Function(_Data) then) =
      __$DataCopyWithImpl<$Res>;
  $Res call(
      {String key,
      String question,
      String context,
      String answer,
      String img,
      String transcription,
      String transcriptionAnswer});
}

/// @nodoc
class __$DataCopyWithImpl<$Res> extends _$CardDataCopyWithImpl<$Res>
    implements _$DataCopyWith<$Res> {
  __$DataCopyWithImpl(_Data _value, $Res Function(_Data) _then)
      : super(_value, (v) => _then(v as _Data));

  @override
  _Data get _value => super._value as _Data;

  @override
  $Res call({
    Object? key = freezed,
    Object? question = freezed,
    Object? context = freezed,
    Object? answer = freezed,
    Object? img = freezed,
    Object? transcription = freezed,
    Object? transcriptionAnswer = freezed,
  }) {
    return _then(_Data(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      question: question == freezed
          ? _value.question
          : question // ignore: cast_nullable_to_non_nullable
              as String,
      context: context == freezed
          ? _value.context
          : context // ignore: cast_nullable_to_non_nullable
              as String,
      answer: answer == freezed
          ? _value.answer
          : answer // ignore: cast_nullable_to_non_nullable
              as String,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String,
      transcription: transcription == freezed
          ? _value.transcription
          : transcription // ignore: cast_nullable_to_non_nullable
              as String,
      transcriptionAnswer: transcriptionAnswer == freezed
          ? _value.transcriptionAnswer
          : transcriptionAnswer // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_Data extends _Data with DiagnosticableTreeMixin {
  const _$_Data(
      {required this.key,
      required this.question,
      required this.context,
      required this.answer,
      required this.img,
      required this.transcription,
      required this.transcriptionAnswer})
      : super._();

  @override
  final String key;
  @override
  final String question;
  @override
  final String context;
  @override
  final String answer;
  @override
  final String img;
  @override
  final String transcription;
  @override
  final String transcriptionAnswer;

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CardData.fromData(key: $key, question: $question, context: $context, answer: $answer, img: $img, transcription: $transcription, transcriptionAnswer: $transcriptionAnswer)';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties
      ..add(DiagnosticsProperty('type', 'CardData.fromData'))
      ..add(DiagnosticsProperty('key', key))
      ..add(DiagnosticsProperty('question', question))
      ..add(DiagnosticsProperty('context', context))
      ..add(DiagnosticsProperty('answer', answer))
      ..add(DiagnosticsProperty('img', img))
      ..add(DiagnosticsProperty('transcription', transcription))
      ..add(DiagnosticsProperty('transcriptionAnswer', transcriptionAnswer));
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Data &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.question, question) &&
            const DeepCollectionEquality().equals(other.context, context) &&
            const DeepCollectionEquality().equals(other.answer, answer) &&
            const DeepCollectionEquality().equals(other.img, img) &&
            const DeepCollectionEquality()
                .equals(other.transcription, transcription) &&
            const DeepCollectionEquality()
                .equals(other.transcriptionAnswer, transcriptionAnswer));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(question),
      const DeepCollectionEquality().hash(context),
      const DeepCollectionEquality().hash(answer),
      const DeepCollectionEquality().hash(img),
      const DeepCollectionEquality().hash(transcription),
      const DeepCollectionEquality().hash(transcriptionAnswer));

  @JsonKey(ignore: true)
  @override
  _$DataCopyWith<_Data> get copyWith =>
      __$DataCopyWithImpl<_Data>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            String key,
            String question,
            String context,
            String answer,
            String img,
            String transcription,
            String transcriptionAnswer)
        fromData,
    required TResult Function() empty,
  }) {
    return fromData(key, question, context, answer, img, transcription,
        transcriptionAnswer);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String key, String question, String context, String answer,
            String img, String transcription, String transcriptionAnswer)?
        fromData,
    TResult Function()? empty,
  }) {
    return fromData?.call(key, question, context, answer, img, transcription,
        transcriptionAnswer);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key, String question, String context, String answer,
            String img, String transcription, String transcriptionAnswer)?
        fromData,
    TResult Function()? empty,
    required TResult orElse(),
  }) {
    if (fromData != null) {
      return fromData(key, question, context, answer, img, transcription,
          transcriptionAnswer);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) fromData,
    required TResult Function(_Empty value) empty,
  }) {
    return fromData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Data value)? fromData,
    TResult Function(_Empty value)? empty,
  }) {
    return fromData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? fromData,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (fromData != null) {
      return fromData(this);
    }
    return orElse();
  }
}

abstract class _Data extends CardData {
  const factory _Data(
      {required String key,
      required String question,
      required String context,
      required String answer,
      required String img,
      required String transcription,
      required String transcriptionAnswer}) = _$_Data;
  const _Data._() : super._();

  String get key;
  String get question;
  String get context;
  String get answer;
  String get img;
  String get transcription;
  String get transcriptionAnswer;
  @JsonKey(ignore: true)
  _$DataCopyWith<_Data> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$CardDataCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;
}

/// @nodoc

class _$_Empty extends _Empty with DiagnosticableTreeMixin {
  const _$_Empty() : super._();

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.info}) {
    return 'CardData.empty()';
  }

  @override
  void debugFillProperties(DiagnosticPropertiesBuilder properties) {
    super.debugFillProperties(properties);
    properties..add(DiagnosticsProperty('type', 'CardData.empty'));
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
  TResult when<TResult extends Object?>({
    required TResult Function(
            String key,
            String question,
            String context,
            String answer,
            String img,
            String transcription,
            String transcriptionAnswer)
        fromData,
    required TResult Function() empty,
  }) {
    return empty();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String key, String question, String context, String answer,
            String img, String transcription, String transcriptionAnswer)?
        fromData,
    TResult Function()? empty,
  }) {
    return empty?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String key, String question, String context, String answer,
            String img, String transcription, String transcriptionAnswer)?
        fromData,
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
  TResult map<TResult extends Object?>({
    required TResult Function(_Data value) fromData,
    required TResult Function(_Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Data value)? fromData,
    TResult Function(_Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Data value)? fromData,
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(this);
    }
    return orElse();
  }
}

abstract class _Empty extends CardData {
  const factory _Empty() = _$_Empty;
  const _Empty._() : super._();
}
