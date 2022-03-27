// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'card_collection_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$CardCollectionEventTearOff {
  const _$CardCollectionEventTearOff();

  _SelectCollectionEvent selectCollection({required String collectionKey}) {
    return _SelectCollectionEvent(
      collectionKey: collectionKey,
    );
  }

  _SwapLeftCollectionEvent swapLeft({required String cardKey}) {
    return _SwapLeftCollectionEvent(
      cardKey: cardKey,
    );
  }

  _SwapRightCollectionEvent swapRight({required String cardKey}) {
    return _SwapRightCollectionEvent(
      cardKey: cardKey,
    );
  }
}

/// @nodoc
const $CardCollectionEvent = _$CardCollectionEventTearOff();

/// @nodoc
mixin _$CardCollectionEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String collectionKey) selectCollection,
    required TResult Function(String cardKey) swapLeft,
    required TResult Function(String cardKey) swapRight,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String collectionKey)? selectCollection,
    TResult Function(String cardKey)? swapLeft,
    TResult Function(String cardKey)? swapRight,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String collectionKey)? selectCollection,
    TResult Function(String cardKey)? swapLeft,
    TResult Function(String cardKey)? swapRight,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCollectionEvent value) selectCollection,
    required TResult Function(_SwapLeftCollectionEvent value) swapLeft,
    required TResult Function(_SwapRightCollectionEvent value) swapRight,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectCollectionEvent value)? selectCollection,
    TResult Function(_SwapLeftCollectionEvent value)? swapLeft,
    TResult Function(_SwapRightCollectionEvent value)? swapRight,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCollectionEvent value)? selectCollection,
    TResult Function(_SwapLeftCollectionEvent value)? swapLeft,
    TResult Function(_SwapRightCollectionEvent value)? swapRight,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCollectionEventCopyWith<$Res> {
  factory $CardCollectionEventCopyWith(
          CardCollectionEvent value, $Res Function(CardCollectionEvent) then) =
      _$CardCollectionEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardCollectionEventCopyWithImpl<$Res>
    implements $CardCollectionEventCopyWith<$Res> {
  _$CardCollectionEventCopyWithImpl(this._value, this._then);

  final CardCollectionEvent _value;
  // ignore: unused_field
  final $Res Function(CardCollectionEvent) _then;
}

/// @nodoc
abstract class _$SelectCollectionEventCopyWith<$Res> {
  factory _$SelectCollectionEventCopyWith(_SelectCollectionEvent value,
          $Res Function(_SelectCollectionEvent) then) =
      __$SelectCollectionEventCopyWithImpl<$Res>;
  $Res call({String collectionKey});
}

/// @nodoc
class __$SelectCollectionEventCopyWithImpl<$Res>
    extends _$CardCollectionEventCopyWithImpl<$Res>
    implements _$SelectCollectionEventCopyWith<$Res> {
  __$SelectCollectionEventCopyWithImpl(_SelectCollectionEvent _value,
      $Res Function(_SelectCollectionEvent) _then)
      : super(_value, (v) => _then(v as _SelectCollectionEvent));

  @override
  _SelectCollectionEvent get _value => super._value as _SelectCollectionEvent;

  @override
  $Res call({
    Object? collectionKey = freezed,
  }) {
    return _then(_SelectCollectionEvent(
      collectionKey: collectionKey == freezed
          ? _value.collectionKey
          : collectionKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SelectCollectionEvent extends _SelectCollectionEvent {
  const _$_SelectCollectionEvent({required this.collectionKey}) : super._();

  @override
  final String collectionKey;

  @override
  String toString() {
    return 'CardCollectionEvent.selectCollection(collectionKey: $collectionKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SelectCollectionEvent &&
            const DeepCollectionEquality()
                .equals(other.collectionKey, collectionKey));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(collectionKey));

  @JsonKey(ignore: true)
  @override
  _$SelectCollectionEventCopyWith<_SelectCollectionEvent> get copyWith =>
      __$SelectCollectionEventCopyWithImpl<_SelectCollectionEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String collectionKey) selectCollection,
    required TResult Function(String cardKey) swapLeft,
    required TResult Function(String cardKey) swapRight,
  }) {
    return selectCollection(collectionKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String collectionKey)? selectCollection,
    TResult Function(String cardKey)? swapLeft,
    TResult Function(String cardKey)? swapRight,
  }) {
    return selectCollection?.call(collectionKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String collectionKey)? selectCollection,
    TResult Function(String cardKey)? swapLeft,
    TResult Function(String cardKey)? swapRight,
    required TResult orElse(),
  }) {
    if (selectCollection != null) {
      return selectCollection(collectionKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCollectionEvent value) selectCollection,
    required TResult Function(_SwapLeftCollectionEvent value) swapLeft,
    required TResult Function(_SwapRightCollectionEvent value) swapRight,
  }) {
    return selectCollection(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectCollectionEvent value)? selectCollection,
    TResult Function(_SwapLeftCollectionEvent value)? swapLeft,
    TResult Function(_SwapRightCollectionEvent value)? swapRight,
  }) {
    return selectCollection?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCollectionEvent value)? selectCollection,
    TResult Function(_SwapLeftCollectionEvent value)? swapLeft,
    TResult Function(_SwapRightCollectionEvent value)? swapRight,
    required TResult orElse(),
  }) {
    if (selectCollection != null) {
      return selectCollection(this);
    }
    return orElse();
  }
}

abstract class _SelectCollectionEvent extends CardCollectionEvent {
  const factory _SelectCollectionEvent({required String collectionKey}) =
      _$_SelectCollectionEvent;
  const _SelectCollectionEvent._() : super._();

  String get collectionKey;
  @JsonKey(ignore: true)
  _$SelectCollectionEventCopyWith<_SelectCollectionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SwapLeftCollectionEventCopyWith<$Res> {
  factory _$SwapLeftCollectionEventCopyWith(_SwapLeftCollectionEvent value,
          $Res Function(_SwapLeftCollectionEvent) then) =
      __$SwapLeftCollectionEventCopyWithImpl<$Res>;
  $Res call({String cardKey});
}

/// @nodoc
class __$SwapLeftCollectionEventCopyWithImpl<$Res>
    extends _$CardCollectionEventCopyWithImpl<$Res>
    implements _$SwapLeftCollectionEventCopyWith<$Res> {
  __$SwapLeftCollectionEventCopyWithImpl(_SwapLeftCollectionEvent _value,
      $Res Function(_SwapLeftCollectionEvent) _then)
      : super(_value, (v) => _then(v as _SwapLeftCollectionEvent));

  @override
  _SwapLeftCollectionEvent get _value =>
      super._value as _SwapLeftCollectionEvent;

  @override
  $Res call({
    Object? cardKey = freezed,
  }) {
    return _then(_SwapLeftCollectionEvent(
      cardKey: cardKey == freezed
          ? _value.cardKey
          : cardKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SwapLeftCollectionEvent extends _SwapLeftCollectionEvent {
  const _$_SwapLeftCollectionEvent({required this.cardKey}) : super._();

  @override
  final String cardKey;

  @override
  String toString() {
    return 'CardCollectionEvent.swapLeft(cardKey: $cardKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SwapLeftCollectionEvent &&
            const DeepCollectionEquality().equals(other.cardKey, cardKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cardKey));

  @JsonKey(ignore: true)
  @override
  _$SwapLeftCollectionEventCopyWith<_SwapLeftCollectionEvent> get copyWith =>
      __$SwapLeftCollectionEventCopyWithImpl<_SwapLeftCollectionEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String collectionKey) selectCollection,
    required TResult Function(String cardKey) swapLeft,
    required TResult Function(String cardKey) swapRight,
  }) {
    return swapLeft(cardKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String collectionKey)? selectCollection,
    TResult Function(String cardKey)? swapLeft,
    TResult Function(String cardKey)? swapRight,
  }) {
    return swapLeft?.call(cardKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String collectionKey)? selectCollection,
    TResult Function(String cardKey)? swapLeft,
    TResult Function(String cardKey)? swapRight,
    required TResult orElse(),
  }) {
    if (swapLeft != null) {
      return swapLeft(cardKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCollectionEvent value) selectCollection,
    required TResult Function(_SwapLeftCollectionEvent value) swapLeft,
    required TResult Function(_SwapRightCollectionEvent value) swapRight,
  }) {
    return swapLeft(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectCollectionEvent value)? selectCollection,
    TResult Function(_SwapLeftCollectionEvent value)? swapLeft,
    TResult Function(_SwapRightCollectionEvent value)? swapRight,
  }) {
    return swapLeft?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCollectionEvent value)? selectCollection,
    TResult Function(_SwapLeftCollectionEvent value)? swapLeft,
    TResult Function(_SwapRightCollectionEvent value)? swapRight,
    required TResult orElse(),
  }) {
    if (swapLeft != null) {
      return swapLeft(this);
    }
    return orElse();
  }
}

abstract class _SwapLeftCollectionEvent extends CardCollectionEvent {
  const factory _SwapLeftCollectionEvent({required String cardKey}) =
      _$_SwapLeftCollectionEvent;
  const _SwapLeftCollectionEvent._() : super._();

  String get cardKey;
  @JsonKey(ignore: true)
  _$SwapLeftCollectionEventCopyWith<_SwapLeftCollectionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$SwapRightCollectionEventCopyWith<$Res> {
  factory _$SwapRightCollectionEventCopyWith(_SwapRightCollectionEvent value,
          $Res Function(_SwapRightCollectionEvent) then) =
      __$SwapRightCollectionEventCopyWithImpl<$Res>;
  $Res call({String cardKey});
}

/// @nodoc
class __$SwapRightCollectionEventCopyWithImpl<$Res>
    extends _$CardCollectionEventCopyWithImpl<$Res>
    implements _$SwapRightCollectionEventCopyWith<$Res> {
  __$SwapRightCollectionEventCopyWithImpl(_SwapRightCollectionEvent _value,
      $Res Function(_SwapRightCollectionEvent) _then)
      : super(_value, (v) => _then(v as _SwapRightCollectionEvent));

  @override
  _SwapRightCollectionEvent get _value =>
      super._value as _SwapRightCollectionEvent;

  @override
  $Res call({
    Object? cardKey = freezed,
  }) {
    return _then(_SwapRightCollectionEvent(
      cardKey: cardKey == freezed
          ? _value.cardKey
          : cardKey // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_SwapRightCollectionEvent extends _SwapRightCollectionEvent {
  const _$_SwapRightCollectionEvent({required this.cardKey}) : super._();

  @override
  final String cardKey;

  @override
  String toString() {
    return 'CardCollectionEvent.swapRight(cardKey: $cardKey)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SwapRightCollectionEvent &&
            const DeepCollectionEquality().equals(other.cardKey, cardKey));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(cardKey));

  @JsonKey(ignore: true)
  @override
  _$SwapRightCollectionEventCopyWith<_SwapRightCollectionEvent> get copyWith =>
      __$SwapRightCollectionEventCopyWithImpl<_SwapRightCollectionEvent>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String collectionKey) selectCollection,
    required TResult Function(String cardKey) swapLeft,
    required TResult Function(String cardKey) swapRight,
  }) {
    return swapRight(cardKey);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String collectionKey)? selectCollection,
    TResult Function(String cardKey)? swapLeft,
    TResult Function(String cardKey)? swapRight,
  }) {
    return swapRight?.call(cardKey);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String collectionKey)? selectCollection,
    TResult Function(String cardKey)? swapLeft,
    TResult Function(String cardKey)? swapRight,
    required TResult orElse(),
  }) {
    if (swapRight != null) {
      return swapRight(cardKey);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_SelectCollectionEvent value) selectCollection,
    required TResult Function(_SwapLeftCollectionEvent value) swapLeft,
    required TResult Function(_SwapRightCollectionEvent value) swapRight,
  }) {
    return swapRight(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_SelectCollectionEvent value)? selectCollection,
    TResult Function(_SwapLeftCollectionEvent value)? swapLeft,
    TResult Function(_SwapRightCollectionEvent value)? swapRight,
  }) {
    return swapRight?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_SelectCollectionEvent value)? selectCollection,
    TResult Function(_SwapLeftCollectionEvent value)? swapLeft,
    TResult Function(_SwapRightCollectionEvent value)? swapRight,
    required TResult orElse(),
  }) {
    if (swapRight != null) {
      return swapRight(this);
    }
    return orElse();
  }
}

abstract class _SwapRightCollectionEvent extends CardCollectionEvent {
  const factory _SwapRightCollectionEvent({required String cardKey}) =
      _$_SwapRightCollectionEvent;
  const _SwapRightCollectionEvent._() : super._();

  String get cardKey;
  @JsonKey(ignore: true)
  _$SwapRightCollectionEventCopyWith<_SwapRightCollectionEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$CardCollectionStateTearOff {
  const _$CardCollectionStateTearOff();

  _FetchingCardCollectionState fetching() {
    return const _FetchingCardCollectionState();
  }

  _ReadyCardCollectionState ready(
      {required List<CardData> data, required String collectionID}) {
    return _ReadyCardCollectionState(
      data: data,
      collectionID: collectionID,
    );
  }

  _ErrorCardCollectionState error() {
    return const _ErrorCardCollectionState();
  }
}

/// @nodoc
const $CardCollectionState = _$CardCollectionStateTearOff();

/// @nodoc
mixin _$CardCollectionState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(List<CardData> data, String collectionID) ready,
    required TResult Function() error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(List<CardData> data, String collectionID)? ready,
    TResult Function()? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(List<CardData> data, String collectionID)? ready,
    TResult Function()? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchingCardCollectionState value) fetching,
    required TResult Function(_ReadyCardCollectionState value) ready,
    required TResult Function(_ErrorCardCollectionState value) error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchingCardCollectionState value)? fetching,
    TResult Function(_ReadyCardCollectionState value)? ready,
    TResult Function(_ErrorCardCollectionState value)? error,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchingCardCollectionState value)? fetching,
    TResult Function(_ReadyCardCollectionState value)? ready,
    TResult Function(_ErrorCardCollectionState value)? error,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CardCollectionStateCopyWith<$Res> {
  factory $CardCollectionStateCopyWith(
          CardCollectionState value, $Res Function(CardCollectionState) then) =
      _$CardCollectionStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$CardCollectionStateCopyWithImpl<$Res>
    implements $CardCollectionStateCopyWith<$Res> {
  _$CardCollectionStateCopyWithImpl(this._value, this._then);

  final CardCollectionState _value;
  // ignore: unused_field
  final $Res Function(CardCollectionState) _then;
}

/// @nodoc
abstract class _$FetchingCardCollectionStateCopyWith<$Res> {
  factory _$FetchingCardCollectionStateCopyWith(
          _FetchingCardCollectionState value,
          $Res Function(_FetchingCardCollectionState) then) =
      __$FetchingCardCollectionStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$FetchingCardCollectionStateCopyWithImpl<$Res>
    extends _$CardCollectionStateCopyWithImpl<$Res>
    implements _$FetchingCardCollectionStateCopyWith<$Res> {
  __$FetchingCardCollectionStateCopyWithImpl(
      _FetchingCardCollectionState _value,
      $Res Function(_FetchingCardCollectionState) _then)
      : super(_value, (v) => _then(v as _FetchingCardCollectionState));

  @override
  _FetchingCardCollectionState get _value =>
      super._value as _FetchingCardCollectionState;
}

/// @nodoc

class _$_FetchingCardCollectionState extends _FetchingCardCollectionState {
  const _$_FetchingCardCollectionState() : super._();

  @override
  String toString() {
    return 'CardCollectionState.fetching()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _FetchingCardCollectionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(List<CardData> data, String collectionID) ready,
    required TResult Function() error,
  }) {
    return fetching();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(List<CardData> data, String collectionID)? ready,
    TResult Function()? error,
  }) {
    return fetching?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(List<CardData> data, String collectionID)? ready,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchingCardCollectionState value) fetching,
    required TResult Function(_ReadyCardCollectionState value) ready,
    required TResult Function(_ErrorCardCollectionState value) error,
  }) {
    return fetching(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchingCardCollectionState value)? fetching,
    TResult Function(_ReadyCardCollectionState value)? ready,
    TResult Function(_ErrorCardCollectionState value)? error,
  }) {
    return fetching?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchingCardCollectionState value)? fetching,
    TResult Function(_ReadyCardCollectionState value)? ready,
    TResult Function(_ErrorCardCollectionState value)? error,
    required TResult orElse(),
  }) {
    if (fetching != null) {
      return fetching(this);
    }
    return orElse();
  }
}

abstract class _FetchingCardCollectionState extends CardCollectionState {
  const factory _FetchingCardCollectionState() = _$_FetchingCardCollectionState;
  const _FetchingCardCollectionState._() : super._();
}

/// @nodoc
abstract class _$ReadyCardCollectionStateCopyWith<$Res> {
  factory _$ReadyCardCollectionStateCopyWith(_ReadyCardCollectionState value,
          $Res Function(_ReadyCardCollectionState) then) =
      __$ReadyCardCollectionStateCopyWithImpl<$Res>;
  $Res call({List<CardData> data, String collectionID});
}

/// @nodoc
class __$ReadyCardCollectionStateCopyWithImpl<$Res>
    extends _$CardCollectionStateCopyWithImpl<$Res>
    implements _$ReadyCardCollectionStateCopyWith<$Res> {
  __$ReadyCardCollectionStateCopyWithImpl(_ReadyCardCollectionState _value,
      $Res Function(_ReadyCardCollectionState) _then)
      : super(_value, (v) => _then(v as _ReadyCardCollectionState));

  @override
  _ReadyCardCollectionState get _value =>
      super._value as _ReadyCardCollectionState;

  @override
  $Res call({
    Object? data = freezed,
    Object? collectionID = freezed,
  }) {
    return _then(_ReadyCardCollectionState(
      data: data == freezed
          ? _value.data
          : data // ignore: cast_nullable_to_non_nullable
              as List<CardData>,
      collectionID: collectionID == freezed
          ? _value.collectionID
          : collectionID // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_ReadyCardCollectionState extends _ReadyCardCollectionState {
  const _$_ReadyCardCollectionState(
      {required this.data, required this.collectionID})
      : super._();

  @override
  final List<CardData> data;
  @override
  final String collectionID;

  @override
  String toString() {
    return 'CardCollectionState.ready(data: $data, collectionID: $collectionID)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ReadyCardCollectionState &&
            const DeepCollectionEquality().equals(other.data, data) &&
            const DeepCollectionEquality()
                .equals(other.collectionID, collectionID));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(data),
      const DeepCollectionEquality().hash(collectionID));

  @JsonKey(ignore: true)
  @override
  _$ReadyCardCollectionStateCopyWith<_ReadyCardCollectionState> get copyWith =>
      __$ReadyCardCollectionStateCopyWithImpl<_ReadyCardCollectionState>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(List<CardData> data, String collectionID) ready,
    required TResult Function() error,
  }) {
    return ready(data, collectionID);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(List<CardData> data, String collectionID)? ready,
    TResult Function()? error,
  }) {
    return ready?.call(data, collectionID);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(List<CardData> data, String collectionID)? ready,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(data, collectionID);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchingCardCollectionState value) fetching,
    required TResult Function(_ReadyCardCollectionState value) ready,
    required TResult Function(_ErrorCardCollectionState value) error,
  }) {
    return ready(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchingCardCollectionState value)? fetching,
    TResult Function(_ReadyCardCollectionState value)? ready,
    TResult Function(_ErrorCardCollectionState value)? error,
  }) {
    return ready?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchingCardCollectionState value)? fetching,
    TResult Function(_ReadyCardCollectionState value)? ready,
    TResult Function(_ErrorCardCollectionState value)? error,
    required TResult orElse(),
  }) {
    if (ready != null) {
      return ready(this);
    }
    return orElse();
  }
}

abstract class _ReadyCardCollectionState extends CardCollectionState {
  const factory _ReadyCardCollectionState(
      {required List<CardData> data,
      required String collectionID}) = _$_ReadyCardCollectionState;
  const _ReadyCardCollectionState._() : super._();

  List<CardData> get data;
  String get collectionID;
  @JsonKey(ignore: true)
  _$ReadyCardCollectionStateCopyWith<_ReadyCardCollectionState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$ErrorCardCollectionStateCopyWith<$Res> {
  factory _$ErrorCardCollectionStateCopyWith(_ErrorCardCollectionState value,
          $Res Function(_ErrorCardCollectionState) then) =
      __$ErrorCardCollectionStateCopyWithImpl<$Res>;
}

/// @nodoc
class __$ErrorCardCollectionStateCopyWithImpl<$Res>
    extends _$CardCollectionStateCopyWithImpl<$Res>
    implements _$ErrorCardCollectionStateCopyWith<$Res> {
  __$ErrorCardCollectionStateCopyWithImpl(_ErrorCardCollectionState _value,
      $Res Function(_ErrorCardCollectionState) _then)
      : super(_value, (v) => _then(v as _ErrorCardCollectionState));

  @override
  _ErrorCardCollectionState get _value =>
      super._value as _ErrorCardCollectionState;
}

/// @nodoc

class _$_ErrorCardCollectionState extends _ErrorCardCollectionState {
  const _$_ErrorCardCollectionState() : super._();

  @override
  String toString() {
    return 'CardCollectionState.error()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _ErrorCardCollectionState);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() fetching,
    required TResult Function(List<CardData> data, String collectionID) ready,
    required TResult Function() error,
  }) {
    return error();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(List<CardData> data, String collectionID)? ready,
    TResult Function()? error,
  }) {
    return error?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? fetching,
    TResult Function(List<CardData> data, String collectionID)? ready,
    TResult Function()? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_FetchingCardCollectionState value) fetching,
    required TResult Function(_ReadyCardCollectionState value) ready,
    required TResult Function(_ErrorCardCollectionState value) error,
  }) {
    return error(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_FetchingCardCollectionState value)? fetching,
    TResult Function(_ReadyCardCollectionState value)? ready,
    TResult Function(_ErrorCardCollectionState value)? error,
  }) {
    return error?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_FetchingCardCollectionState value)? fetching,
    TResult Function(_ReadyCardCollectionState value)? ready,
    TResult Function(_ErrorCardCollectionState value)? error,
    required TResult orElse(),
  }) {
    if (error != null) {
      return error(this);
    }
    return orElse();
  }
}

abstract class _ErrorCardCollectionState extends CardCollectionState {
  const factory _ErrorCardCollectionState() = _$_ErrorCardCollectionState;
  const _ErrorCardCollectionState._() : super._();
}
