// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'dictionary.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserData _$UserDataFromJson(Map<String, dynamic> json) {
  return _UserData.fromJson(json);
}

/// @nodoc
class _$UserDataTearOff {
  const _$UserDataTearOff();

  _UserData call({required String deviceId}) {
    return _UserData(
      deviceId: deviceId,
    );
  }

  UserData fromJson(Map<String, Object?> json) {
    return UserData.fromJson(json);
  }
}

/// @nodoc
const $UserData = _$UserDataTearOff();

/// @nodoc
mixin _$UserData {
  String get deviceId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDataCopyWith<UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDataCopyWith<$Res> {
  factory $UserDataCopyWith(UserData value, $Res Function(UserData) then) =
      _$UserDataCopyWithImpl<$Res>;
  $Res call({String deviceId});
}

/// @nodoc
class _$UserDataCopyWithImpl<$Res> implements $UserDataCopyWith<$Res> {
  _$UserDataCopyWithImpl(this._value, this._then);

  final UserData _value;
  // ignore: unused_field
  final $Res Function(UserData) _then;

  @override
  $Res call({
    Object? deviceId = freezed,
  }) {
    return _then(_value.copyWith(
      deviceId: deviceId == freezed
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$UserDataCopyWith<$Res> implements $UserDataCopyWith<$Res> {
  factory _$UserDataCopyWith(_UserData value, $Res Function(_UserData) then) =
      __$UserDataCopyWithImpl<$Res>;
  @override
  $Res call({String deviceId});
}

/// @nodoc
class __$UserDataCopyWithImpl<$Res> extends _$UserDataCopyWithImpl<$Res>
    implements _$UserDataCopyWith<$Res> {
  __$UserDataCopyWithImpl(_UserData _value, $Res Function(_UserData) _then)
      : super(_value, (v) => _then(v as _UserData));

  @override
  _UserData get _value => super._value as _UserData;

  @override
  $Res call({
    Object? deviceId = freezed,
  }) {
    return _then(_UserData(
      deviceId: deviceId == freezed
          ? _value.deviceId
          : deviceId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserData implements _UserData {
  const _$_UserData({required this.deviceId});

  factory _$_UserData.fromJson(Map<String, dynamic> json) =>
      _$$_UserDataFromJson(json);

  @override
  final String deviceId;

  @override
  String toString() {
    return 'UserData(deviceId: $deviceId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserData &&
            const DeepCollectionEquality().equals(other.deviceId, deviceId));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(deviceId));

  @JsonKey(ignore: true)
  @override
  _$UserDataCopyWith<_UserData> get copyWith =>
      __$UserDataCopyWithImpl<_UserData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDataToJson(this);
  }
}

abstract class _UserData implements UserData {
  const factory _UserData({required String deviceId}) = _$_UserData;

  factory _UserData.fromJson(Map<String, dynamic> json) = _$_UserData.fromJson;

  @override
  String get deviceId;
  @override
  @JsonKey(ignore: true)
  _$UserDataCopyWith<_UserData> get copyWith =>
      throw _privateConstructorUsedError;
}

AnswerData _$AnswerDataFromJson(Map<String, dynamic> json) {
  return _AnswerData.fromJson(json);
}

/// @nodoc
class _$AnswerDataTearOff {
  const _$AnswerDataTearOff();

  _AnswerData call(
      {required int day,
      required int date,
      required String cardKey,
      required bool remember}) {
    return _AnswerData(
      day: day,
      date: date,
      cardKey: cardKey,
      remember: remember,
    );
  }

  AnswerData fromJson(Map<String, Object?> json) {
    return AnswerData.fromJson(json);
  }
}

/// @nodoc
const $AnswerData = _$AnswerDataTearOff();

/// @nodoc
mixin _$AnswerData {
  int get day => throw _privateConstructorUsedError;
  int get date => throw _privateConstructorUsedError;
  String get cardKey => throw _privateConstructorUsedError;
  bool get remember => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AnswerDataCopyWith<AnswerData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AnswerDataCopyWith<$Res> {
  factory $AnswerDataCopyWith(
          AnswerData value, $Res Function(AnswerData) then) =
      _$AnswerDataCopyWithImpl<$Res>;
  $Res call({int day, int date, String cardKey, bool remember});
}

/// @nodoc
class _$AnswerDataCopyWithImpl<$Res> implements $AnswerDataCopyWith<$Res> {
  _$AnswerDataCopyWithImpl(this._value, this._then);

  final AnswerData _value;
  // ignore: unused_field
  final $Res Function(AnswerData) _then;

  @override
  $Res call({
    Object? day = freezed,
    Object? date = freezed,
    Object? cardKey = freezed,
    Object? remember = freezed,
  }) {
    return _then(_value.copyWith(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      cardKey: cardKey == freezed
          ? _value.cardKey
          : cardKey // ignore: cast_nullable_to_non_nullable
              as String,
      remember: remember == freezed
          ? _value.remember
          : remember // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$AnswerDataCopyWith<$Res> implements $AnswerDataCopyWith<$Res> {
  factory _$AnswerDataCopyWith(
          _AnswerData value, $Res Function(_AnswerData) then) =
      __$AnswerDataCopyWithImpl<$Res>;
  @override
  $Res call({int day, int date, String cardKey, bool remember});
}

/// @nodoc
class __$AnswerDataCopyWithImpl<$Res> extends _$AnswerDataCopyWithImpl<$Res>
    implements _$AnswerDataCopyWith<$Res> {
  __$AnswerDataCopyWithImpl(
      _AnswerData _value, $Res Function(_AnswerData) _then)
      : super(_value, (v) => _then(v as _AnswerData));

  @override
  _AnswerData get _value => super._value as _AnswerData;

  @override
  $Res call({
    Object? day = freezed,
    Object? date = freezed,
    Object? cardKey = freezed,
    Object? remember = freezed,
  }) {
    return _then(_AnswerData(
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
      date: date == freezed
          ? _value.date
          : date // ignore: cast_nullable_to_non_nullable
              as int,
      cardKey: cardKey == freezed
          ? _value.cardKey
          : cardKey // ignore: cast_nullable_to_non_nullable
              as String,
      remember: remember == freezed
          ? _value.remember
          : remember // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_AnswerData implements _AnswerData {
  const _$_AnswerData(
      {required this.day,
      required this.date,
      required this.cardKey,
      required this.remember});

  factory _$_AnswerData.fromJson(Map<String, dynamic> json) =>
      _$$_AnswerDataFromJson(json);

  @override
  final int day;
  @override
  final int date;
  @override
  final String cardKey;
  @override
  final bool remember;

  @override
  String toString() {
    return 'AnswerData(day: $day, date: $date, cardKey: $cardKey, remember: $remember)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _AnswerData &&
            const DeepCollectionEquality().equals(other.day, day) &&
            const DeepCollectionEquality().equals(other.date, date) &&
            const DeepCollectionEquality().equals(other.cardKey, cardKey) &&
            const DeepCollectionEquality().equals(other.remember, remember));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(day),
      const DeepCollectionEquality().hash(date),
      const DeepCollectionEquality().hash(cardKey),
      const DeepCollectionEquality().hash(remember));

  @JsonKey(ignore: true)
  @override
  _$AnswerDataCopyWith<_AnswerData> get copyWith =>
      __$AnswerDataCopyWithImpl<_AnswerData>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AnswerDataToJson(this);
  }
}

abstract class _AnswerData implements AnswerData {
  const factory _AnswerData(
      {required int day,
      required int date,
      required String cardKey,
      required bool remember}) = _$_AnswerData;

  factory _AnswerData.fromJson(Map<String, dynamic> json) =
      _$_AnswerData.fromJson;

  @override
  int get day;
  @override
  int get date;
  @override
  String get cardKey;
  @override
  bool get remember;
  @override
  @JsonKey(ignore: true)
  _$AnswerDataCopyWith<_AnswerData> get copyWith =>
      throw _privateConstructorUsedError;
}

Dictionary _$DictionaryFromJson(Map<String, dynamic> json) {
  return _Dictionary.fromJson(json);
}

/// @nodoc
class _$DictionaryTearOff {
  const _$DictionaryTearOff();

  _Dictionary call(
      {required String key,
      required String title,
      required String description,
      required DictionaryImage img}) {
    return _Dictionary(
      key: key,
      title: title,
      description: description,
      img: img,
    );
  }

  Dictionary fromJson(Map<String, Object?> json) {
    return Dictionary.fromJson(json);
  }
}

/// @nodoc
const $Dictionary = _$DictionaryTearOff();

/// @nodoc
mixin _$Dictionary {
  String get key => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get description => throw _privateConstructorUsedError;
  DictionaryImage get img => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $DictionaryCopyWith<Dictionary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $DictionaryCopyWith<$Res> {
  factory $DictionaryCopyWith(
          Dictionary value, $Res Function(Dictionary) then) =
      _$DictionaryCopyWithImpl<$Res>;
  $Res call(
      {String key, String title, String description, DictionaryImage img});

  $DictionaryImageCopyWith<$Res> get img;
}

/// @nodoc
class _$DictionaryCopyWithImpl<$Res> implements $DictionaryCopyWith<$Res> {
  _$DictionaryCopyWithImpl(this._value, this._then);

  final Dictionary _value;
  // ignore: unused_field
  final $Res Function(Dictionary) _then;

  @override
  $Res call({
    Object? key = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? img = freezed,
  }) {
    return _then(_value.copyWith(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as DictionaryImage,
    ));
  }

  @override
  $DictionaryImageCopyWith<$Res> get img {
    return $DictionaryImageCopyWith<$Res>(_value.img, (value) {
      return _then(_value.copyWith(img: value));
    });
  }
}

/// @nodoc
abstract class _$DictionaryCopyWith<$Res> implements $DictionaryCopyWith<$Res> {
  factory _$DictionaryCopyWith(
          _Dictionary value, $Res Function(_Dictionary) then) =
      __$DictionaryCopyWithImpl<$Res>;
  @override
  $Res call(
      {String key, String title, String description, DictionaryImage img});

  @override
  $DictionaryImageCopyWith<$Res> get img;
}

/// @nodoc
class __$DictionaryCopyWithImpl<$Res> extends _$DictionaryCopyWithImpl<$Res>
    implements _$DictionaryCopyWith<$Res> {
  __$DictionaryCopyWithImpl(
      _Dictionary _value, $Res Function(_Dictionary) _then)
      : super(_value, (v) => _then(v as _Dictionary));

  @override
  _Dictionary get _value => super._value as _Dictionary;

  @override
  $Res call({
    Object? key = freezed,
    Object? title = freezed,
    Object? description = freezed,
    Object? img = freezed,
  }) {
    return _then(_Dictionary(
      key: key == freezed
          ? _value.key
          : key // ignore: cast_nullable_to_non_nullable
              as String,
      title: title == freezed
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as DictionaryImage,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Dictionary implements _Dictionary {
  const _$_Dictionary(
      {required this.key,
      required this.title,
      required this.description,
      required this.img});

  factory _$_Dictionary.fromJson(Map<String, dynamic> json) =>
      _$$_DictionaryFromJson(json);

  @override
  final String key;
  @override
  final String title;
  @override
  final String description;
  @override
  final DictionaryImage img;

  @override
  String toString() {
    return 'Dictionary(key: $key, title: $title, description: $description, img: $img)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Dictionary &&
            const DeepCollectionEquality().equals(other.key, key) &&
            const DeepCollectionEquality().equals(other.title, title) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.img, img));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(key),
      const DeepCollectionEquality().hash(title),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(img));

  @JsonKey(ignore: true)
  @override
  _$DictionaryCopyWith<_Dictionary> get copyWith =>
      __$DictionaryCopyWithImpl<_Dictionary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_DictionaryToJson(this);
  }
}

abstract class _Dictionary implements Dictionary {
  const factory _Dictionary(
      {required String key,
      required String title,
      required String description,
      required DictionaryImage img}) = _$_Dictionary;

  factory _Dictionary.fromJson(Map<String, dynamic> json) =
      _$_Dictionary.fromJson;

  @override
  String get key;
  @override
  String get title;
  @override
  String get description;
  @override
  DictionaryImage get img;
  @override
  @JsonKey(ignore: true)
  _$DictionaryCopyWith<_Dictionary> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDayProgress _$UserDayProgressFromJson(Map<String, dynamic> json) {
  return _UserDayProgress.fromJson(json);
}

/// @nodoc
class _$UserDayProgressTearOff {
  const _$UserDayProgressTearOff();

  _UserDayProgress call({required int progress, required int day}) {
    return _UserDayProgress(
      progress: progress,
      day: day,
    );
  }

  UserDayProgress fromJson(Map<String, Object?> json) {
    return UserDayProgress.fromJson(json);
  }
}

/// @nodoc
const $UserDayProgress = _$UserDayProgressTearOff();

/// @nodoc
mixin _$UserDayProgress {
  int get progress => throw _privateConstructorUsedError;
  int get day => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDayProgressCopyWith<UserDayProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDayProgressCopyWith<$Res> {
  factory $UserDayProgressCopyWith(
          UserDayProgress value, $Res Function(UserDayProgress) then) =
      _$UserDayProgressCopyWithImpl<$Res>;
  $Res call({int progress, int day});
}

/// @nodoc
class _$UserDayProgressCopyWithImpl<$Res>
    implements $UserDayProgressCopyWith<$Res> {
  _$UserDayProgressCopyWithImpl(this._value, this._then);

  final UserDayProgress _value;
  // ignore: unused_field
  final $Res Function(UserDayProgress) _then;

  @override
  $Res call({
    Object? progress = freezed,
    Object? day = freezed,
  }) {
    return _then(_value.copyWith(
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$UserDayProgressCopyWith<$Res>
    implements $UserDayProgressCopyWith<$Res> {
  factory _$UserDayProgressCopyWith(
          _UserDayProgress value, $Res Function(_UserDayProgress) then) =
      __$UserDayProgressCopyWithImpl<$Res>;
  @override
  $Res call({int progress, int day});
}

/// @nodoc
class __$UserDayProgressCopyWithImpl<$Res>
    extends _$UserDayProgressCopyWithImpl<$Res>
    implements _$UserDayProgressCopyWith<$Res> {
  __$UserDayProgressCopyWithImpl(
      _UserDayProgress _value, $Res Function(_UserDayProgress) _then)
      : super(_value, (v) => _then(v as _UserDayProgress));

  @override
  _UserDayProgress get _value => super._value as _UserDayProgress;

  @override
  $Res call({
    Object? progress = freezed,
    Object? day = freezed,
  }) {
    return _then(_UserDayProgress(
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as int,
      day: day == freezed
          ? _value.day
          : day // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDayProgress implements _UserDayProgress {
  const _$_UserDayProgress({required this.progress, required this.day});

  factory _$_UserDayProgress.fromJson(Map<String, dynamic> json) =>
      _$$_UserDayProgressFromJson(json);

  @override
  final int progress;
  @override
  final int day;

  @override
  String toString() {
    return 'UserDayProgress(progress: $progress, day: $day)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDayProgress &&
            const DeepCollectionEquality().equals(other.progress, progress) &&
            const DeepCollectionEquality().equals(other.day, day));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(progress),
      const DeepCollectionEquality().hash(day));

  @JsonKey(ignore: true)
  @override
  _$UserDayProgressCopyWith<_UserDayProgress> get copyWith =>
      __$UserDayProgressCopyWithImpl<_UserDayProgress>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDayProgressToJson(this);
  }
}

abstract class _UserDayProgress implements UserDayProgress {
  const factory _UserDayProgress({required int progress, required int day}) =
      _$_UserDayProgress;

  factory _UserDayProgress.fromJson(Map<String, dynamic> json) =
      _$_UserDayProgress.fromJson;

  @override
  int get progress;
  @override
  int get day;
  @override
  @JsonKey(ignore: true)
  _$UserDayProgressCopyWith<_UserDayProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDictionaryProgress _$UserDictionaryProgressFromJson(
    Map<String, dynamic> json) {
  return _UserDictionaryProgress.fromJson(json);
}

/// @nodoc
class _$UserDictionaryProgressTearOff {
  const _$UserDictionaryProgressTearOff();

  _UserDictionaryProgress call(
      {required int newCards,
      required int repeateCards,
      required List<UserDayProgress> dailyProgress}) {
    return _UserDictionaryProgress(
      newCards: newCards,
      repeateCards: repeateCards,
      dailyProgress: dailyProgress,
    );
  }

  UserDictionaryProgress fromJson(Map<String, Object?> json) {
    return UserDictionaryProgress.fromJson(json);
  }
}

/// @nodoc
const $UserDictionaryProgress = _$UserDictionaryProgressTearOff();

/// @nodoc
mixin _$UserDictionaryProgress {
  int get newCards => throw _privateConstructorUsedError;
  int get repeateCards => throw _privateConstructorUsedError;
  List<UserDayProgress> get dailyProgress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDictionaryProgressCopyWith<UserDictionaryProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDictionaryProgressCopyWith<$Res> {
  factory $UserDictionaryProgressCopyWith(UserDictionaryProgress value,
          $Res Function(UserDictionaryProgress) then) =
      _$UserDictionaryProgressCopyWithImpl<$Res>;
  $Res call(
      {int newCards, int repeateCards, List<UserDayProgress> dailyProgress});
}

/// @nodoc
class _$UserDictionaryProgressCopyWithImpl<$Res>
    implements $UserDictionaryProgressCopyWith<$Res> {
  _$UserDictionaryProgressCopyWithImpl(this._value, this._then);

  final UserDictionaryProgress _value;
  // ignore: unused_field
  final $Res Function(UserDictionaryProgress) _then;

  @override
  $Res call({
    Object? newCards = freezed,
    Object? repeateCards = freezed,
    Object? dailyProgress = freezed,
  }) {
    return _then(_value.copyWith(
      newCards: newCards == freezed
          ? _value.newCards
          : newCards // ignore: cast_nullable_to_non_nullable
              as int,
      repeateCards: repeateCards == freezed
          ? _value.repeateCards
          : repeateCards // ignore: cast_nullable_to_non_nullable
              as int,
      dailyProgress: dailyProgress == freezed
          ? _value.dailyProgress
          : dailyProgress // ignore: cast_nullable_to_non_nullable
              as List<UserDayProgress>,
    ));
  }
}

/// @nodoc
abstract class _$UserDictionaryProgressCopyWith<$Res>
    implements $UserDictionaryProgressCopyWith<$Res> {
  factory _$UserDictionaryProgressCopyWith(_UserDictionaryProgress value,
          $Res Function(_UserDictionaryProgress) then) =
      __$UserDictionaryProgressCopyWithImpl<$Res>;
  @override
  $Res call(
      {int newCards, int repeateCards, List<UserDayProgress> dailyProgress});
}

/// @nodoc
class __$UserDictionaryProgressCopyWithImpl<$Res>
    extends _$UserDictionaryProgressCopyWithImpl<$Res>
    implements _$UserDictionaryProgressCopyWith<$Res> {
  __$UserDictionaryProgressCopyWithImpl(_UserDictionaryProgress _value,
      $Res Function(_UserDictionaryProgress) _then)
      : super(_value, (v) => _then(v as _UserDictionaryProgress));

  @override
  _UserDictionaryProgress get _value => super._value as _UserDictionaryProgress;

  @override
  $Res call({
    Object? newCards = freezed,
    Object? repeateCards = freezed,
    Object? dailyProgress = freezed,
  }) {
    return _then(_UserDictionaryProgress(
      newCards: newCards == freezed
          ? _value.newCards
          : newCards // ignore: cast_nullable_to_non_nullable
              as int,
      repeateCards: repeateCards == freezed
          ? _value.repeateCards
          : repeateCards // ignore: cast_nullable_to_non_nullable
              as int,
      dailyProgress: dailyProgress == freezed
          ? _value.dailyProgress
          : dailyProgress // ignore: cast_nullable_to_non_nullable
              as List<UserDayProgress>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDictionaryProgress implements _UserDictionaryProgress {
  const _$_UserDictionaryProgress(
      {required this.newCards,
      required this.repeateCards,
      required this.dailyProgress});

  factory _$_UserDictionaryProgress.fromJson(Map<String, dynamic> json) =>
      _$$_UserDictionaryProgressFromJson(json);

  @override
  final int newCards;
  @override
  final int repeateCards;
  @override
  final List<UserDayProgress> dailyProgress;

  @override
  String toString() {
    return 'UserDictionaryProgress(newCards: $newCards, repeateCards: $repeateCards, dailyProgress: $dailyProgress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDictionaryProgress &&
            const DeepCollectionEquality().equals(other.newCards, newCards) &&
            const DeepCollectionEquality()
                .equals(other.repeateCards, repeateCards) &&
            const DeepCollectionEquality()
                .equals(other.dailyProgress, dailyProgress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(newCards),
      const DeepCollectionEquality().hash(repeateCards),
      const DeepCollectionEquality().hash(dailyProgress));

  @JsonKey(ignore: true)
  @override
  _$UserDictionaryProgressCopyWith<_UserDictionaryProgress> get copyWith =>
      __$UserDictionaryProgressCopyWithImpl<_UserDictionaryProgress>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDictionaryProgressToJson(this);
  }
}

abstract class _UserDictionaryProgress implements UserDictionaryProgress {
  const factory _UserDictionaryProgress(
          {required int newCards,
          required int repeateCards,
          required List<UserDayProgress> dailyProgress}) =
      _$_UserDictionaryProgress;

  factory _UserDictionaryProgress.fromJson(Map<String, dynamic> json) =
      _$_UserDictionaryProgress.fromJson;

  @override
  int get newCards;
  @override
  int get repeateCards;
  @override
  List<UserDayProgress> get dailyProgress;
  @override
  @JsonKey(ignore: true)
  _$UserDictionaryProgressCopyWith<_UserDictionaryProgress> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDictionary _$UserDictionaryFromJson(Map<String, dynamic> json) {
  return _UserDictionary.fromJson(json);
}

/// @nodoc
class _$UserDictionaryTearOff {
  const _$UserDictionaryTearOff();

  _UserDictionary call(
      {required Dictionary dictionary,
      required UserDictionaryProgress progress}) {
    return _UserDictionary(
      dictionary: dictionary,
      progress: progress,
    );
  }

  UserDictionary fromJson(Map<String, Object?> json) {
    return UserDictionary.fromJson(json);
  }
}

/// @nodoc
const $UserDictionary = _$UserDictionaryTearOff();

/// @nodoc
mixin _$UserDictionary {
  Dictionary get dictionary => throw _privateConstructorUsedError;
  UserDictionaryProgress get progress => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDictionaryCopyWith<UserDictionary> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDictionaryCopyWith<$Res> {
  factory $UserDictionaryCopyWith(
          UserDictionary value, $Res Function(UserDictionary) then) =
      _$UserDictionaryCopyWithImpl<$Res>;
  $Res call({Dictionary dictionary, UserDictionaryProgress progress});

  $DictionaryCopyWith<$Res> get dictionary;
  $UserDictionaryProgressCopyWith<$Res> get progress;
}

/// @nodoc
class _$UserDictionaryCopyWithImpl<$Res>
    implements $UserDictionaryCopyWith<$Res> {
  _$UserDictionaryCopyWithImpl(this._value, this._then);

  final UserDictionary _value;
  // ignore: unused_field
  final $Res Function(UserDictionary) _then;

  @override
  $Res call({
    Object? dictionary = freezed,
    Object? progress = freezed,
  }) {
    return _then(_value.copyWith(
      dictionary: dictionary == freezed
          ? _value.dictionary
          : dictionary // ignore: cast_nullable_to_non_nullable
              as Dictionary,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as UserDictionaryProgress,
    ));
  }

  @override
  $DictionaryCopyWith<$Res> get dictionary {
    return $DictionaryCopyWith<$Res>(_value.dictionary, (value) {
      return _then(_value.copyWith(dictionary: value));
    });
  }

  @override
  $UserDictionaryProgressCopyWith<$Res> get progress {
    return $UserDictionaryProgressCopyWith<$Res>(_value.progress, (value) {
      return _then(_value.copyWith(progress: value));
    });
  }
}

/// @nodoc
abstract class _$UserDictionaryCopyWith<$Res>
    implements $UserDictionaryCopyWith<$Res> {
  factory _$UserDictionaryCopyWith(
          _UserDictionary value, $Res Function(_UserDictionary) then) =
      __$UserDictionaryCopyWithImpl<$Res>;
  @override
  $Res call({Dictionary dictionary, UserDictionaryProgress progress});

  @override
  $DictionaryCopyWith<$Res> get dictionary;
  @override
  $UserDictionaryProgressCopyWith<$Res> get progress;
}

/// @nodoc
class __$UserDictionaryCopyWithImpl<$Res>
    extends _$UserDictionaryCopyWithImpl<$Res>
    implements _$UserDictionaryCopyWith<$Res> {
  __$UserDictionaryCopyWithImpl(
      _UserDictionary _value, $Res Function(_UserDictionary) _then)
      : super(_value, (v) => _then(v as _UserDictionary));

  @override
  _UserDictionary get _value => super._value as _UserDictionary;

  @override
  $Res call({
    Object? dictionary = freezed,
    Object? progress = freezed,
  }) {
    return _then(_UserDictionary(
      dictionary: dictionary == freezed
          ? _value.dictionary
          : dictionary // ignore: cast_nullable_to_non_nullable
              as Dictionary,
      progress: progress == freezed
          ? _value.progress
          : progress // ignore: cast_nullable_to_non_nullable
              as UserDictionaryProgress,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDictionary implements _UserDictionary {
  const _$_UserDictionary({required this.dictionary, required this.progress});

  factory _$_UserDictionary.fromJson(Map<String, dynamic> json) =>
      _$$_UserDictionaryFromJson(json);

  @override
  final Dictionary dictionary;
  @override
  final UserDictionaryProgress progress;

  @override
  String toString() {
    return 'UserDictionary(dictionary: $dictionary, progress: $progress)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDictionary &&
            const DeepCollectionEquality()
                .equals(other.dictionary, dictionary) &&
            const DeepCollectionEquality().equals(other.progress, progress));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(dictionary),
      const DeepCollectionEquality().hash(progress));

  @JsonKey(ignore: true)
  @override
  _$UserDictionaryCopyWith<_UserDictionary> get copyWith =>
      __$UserDictionaryCopyWithImpl<_UserDictionary>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserDictionaryToJson(this);
  }
}

abstract class _UserDictionary implements UserDictionary {
  const factory _UserDictionary(
      {required Dictionary dictionary,
      required UserDictionaryProgress progress}) = _$_UserDictionary;

  factory _UserDictionary.fromJson(Map<String, dynamic> json) =
      _$_UserDictionary.fromJson;

  @override
  Dictionary get dictionary;
  @override
  UserDictionaryProgress get progress;
  @override
  @JsonKey(ignore: true)
  _$UserDictionaryCopyWith<_UserDictionary> get copyWith =>
      throw _privateConstructorUsedError;
}

UserDictionaryList _$UserDictionaryListFromJson(Map<String, dynamic> json) {
  switch (json['runtimeType']) {
    case 'default':
      return _UserDictionaryList.fromJson(json);
    case 'empty':
      return _Empty.fromJson(json);

    default:
      throw CheckedFromJsonException(json, 'runtimeType', 'UserDictionaryList',
          'Invalid union type "${json['runtimeType']}"!');
  }
}

/// @nodoc
class _$UserDictionaryListTearOff {
  const _$UserDictionaryListTearOff();

  _UserDictionaryList call(
      {required bool isLoading,
      required List<UserDictionary> userDictionaryList}) {
    return _UserDictionaryList(
      isLoading: isLoading,
      userDictionaryList: userDictionaryList,
    );
  }

  _Empty empty(
      [bool isLoading = false,
      List<UserDictionary> userDictionaryList = const []]) {
    return _Empty(
      isLoading,
      userDictionaryList,
    );
  }

  UserDictionaryList fromJson(Map<String, Object?> json) {
    return UserDictionaryList.fromJson(json);
  }
}

/// @nodoc
const $UserDictionaryList = _$UserDictionaryListTearOff();

/// @nodoc
mixin _$UserDictionaryList {
  bool get isLoading => throw _privateConstructorUsedError;
  List<UserDictionary> get userDictionaryList =>
      throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isLoading, List<UserDictionary> userDictionaryList)
        $default, {
    required TResult Function(
            bool isLoading, List<UserDictionary> userDictionaryList)
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(bool isLoading, List<UserDictionary> userDictionaryList)?
        $default, {
    TResult Function(bool isLoading, List<UserDictionary> userDictionaryList)?
        empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool isLoading, List<UserDictionary> userDictionaryList)?
        $default, {
    TResult Function(bool isLoading, List<UserDictionary> userDictionaryList)?
        empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserDictionaryList value) $default, {
    required TResult Function(_Empty value) empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_UserDictionaryList value)? $default, {
    TResult Function(_Empty value)? empty,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserDictionaryList value)? $default, {
    TResult Function(_Empty value)? empty,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserDictionaryListCopyWith<UserDictionaryList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserDictionaryListCopyWith<$Res> {
  factory $UserDictionaryListCopyWith(
          UserDictionaryList value, $Res Function(UserDictionaryList) then) =
      _$UserDictionaryListCopyWithImpl<$Res>;
  $Res call({bool isLoading, List<UserDictionary> userDictionaryList});
}

/// @nodoc
class _$UserDictionaryListCopyWithImpl<$Res>
    implements $UserDictionaryListCopyWith<$Res> {
  _$UserDictionaryListCopyWithImpl(this._value, this._then);

  final UserDictionaryList _value;
  // ignore: unused_field
  final $Res Function(UserDictionaryList) _then;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? userDictionaryList = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userDictionaryList: userDictionaryList == freezed
          ? _value.userDictionaryList
          : userDictionaryList // ignore: cast_nullable_to_non_nullable
              as List<UserDictionary>,
    ));
  }
}

/// @nodoc
abstract class _$UserDictionaryListCopyWith<$Res>
    implements $UserDictionaryListCopyWith<$Res> {
  factory _$UserDictionaryListCopyWith(
          _UserDictionaryList value, $Res Function(_UserDictionaryList) then) =
      __$UserDictionaryListCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<UserDictionary> userDictionaryList});
}

/// @nodoc
class __$UserDictionaryListCopyWithImpl<$Res>
    extends _$UserDictionaryListCopyWithImpl<$Res>
    implements _$UserDictionaryListCopyWith<$Res> {
  __$UserDictionaryListCopyWithImpl(
      _UserDictionaryList _value, $Res Function(_UserDictionaryList) _then)
      : super(_value, (v) => _then(v as _UserDictionaryList));

  @override
  _UserDictionaryList get _value => super._value as _UserDictionaryList;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? userDictionaryList = freezed,
  }) {
    return _then(_UserDictionaryList(
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userDictionaryList: userDictionaryList == freezed
          ? _value.userDictionaryList
          : userDictionaryList // ignore: cast_nullable_to_non_nullable
              as List<UserDictionary>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserDictionaryList implements _UserDictionaryList {
  const _$_UserDictionaryList(
      {required this.isLoading,
      required this.userDictionaryList,
      String? $type})
      : $type = $type ?? 'default';

  factory _$_UserDictionaryList.fromJson(Map<String, dynamic> json) =>
      _$$_UserDictionaryListFromJson(json);

  @override
  final bool isLoading;
  @override
  final List<UserDictionary> userDictionaryList;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserDictionaryList(isLoading: $isLoading, userDictionaryList: $userDictionaryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _UserDictionaryList &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.userDictionaryList, userDictionaryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(userDictionaryList));

  @JsonKey(ignore: true)
  @override
  _$UserDictionaryListCopyWith<_UserDictionaryList> get copyWith =>
      __$UserDictionaryListCopyWithImpl<_UserDictionaryList>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isLoading, List<UserDictionary> userDictionaryList)
        $default, {
    required TResult Function(
            bool isLoading, List<UserDictionary> userDictionaryList)
        empty,
  }) {
    return $default(isLoading, userDictionaryList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(bool isLoading, List<UserDictionary> userDictionaryList)?
        $default, {
    TResult Function(bool isLoading, List<UserDictionary> userDictionaryList)?
        empty,
  }) {
    return $default?.call(isLoading, userDictionaryList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool isLoading, List<UserDictionary> userDictionaryList)?
        $default, {
    TResult Function(bool isLoading, List<UserDictionary> userDictionaryList)?
        empty,
    required TResult orElse(),
  }) {
    if ($default != null) {
      return $default(isLoading, userDictionaryList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserDictionaryList value) $default, {
    required TResult Function(_Empty value) empty,
  }) {
    return $default(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_UserDictionaryList value)? $default, {
    TResult Function(_Empty value)? empty,
  }) {
    return $default?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserDictionaryList value)? $default, {
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
    return _$$_UserDictionaryListToJson(this);
  }
}

abstract class _UserDictionaryList implements UserDictionaryList {
  const factory _UserDictionaryList(
          {required bool isLoading,
          required List<UserDictionary> userDictionaryList}) =
      _$_UserDictionaryList;

  factory _UserDictionaryList.fromJson(Map<String, dynamic> json) =
      _$_UserDictionaryList.fromJson;

  @override
  bool get isLoading;
  @override
  List<UserDictionary> get userDictionaryList;
  @override
  @JsonKey(ignore: true)
  _$UserDictionaryListCopyWith<_UserDictionaryList> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$EmptyCopyWith<$Res>
    implements $UserDictionaryListCopyWith<$Res> {
  factory _$EmptyCopyWith(_Empty value, $Res Function(_Empty) then) =
      __$EmptyCopyWithImpl<$Res>;
  @override
  $Res call({bool isLoading, List<UserDictionary> userDictionaryList});
}

/// @nodoc
class __$EmptyCopyWithImpl<$Res> extends _$UserDictionaryListCopyWithImpl<$Res>
    implements _$EmptyCopyWith<$Res> {
  __$EmptyCopyWithImpl(_Empty _value, $Res Function(_Empty) _then)
      : super(_value, (v) => _then(v as _Empty));

  @override
  _Empty get _value => super._value as _Empty;

  @override
  $Res call({
    Object? isLoading = freezed,
    Object? userDictionaryList = freezed,
  }) {
    return _then(_Empty(
      isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      userDictionaryList == freezed
          ? _value.userDictionaryList
          : userDictionaryList // ignore: cast_nullable_to_non_nullable
              as List<UserDictionary>,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Empty implements _Empty {
  _$_Empty(
      [this.isLoading = false,
      this.userDictionaryList = const [],
      String? $type])
      : $type = $type ?? 'empty';

  factory _$_Empty.fromJson(Map<String, dynamic> json) =>
      _$$_EmptyFromJson(json);

  @JsonKey()
  @override
  final bool isLoading;
  @JsonKey()
  @override
  final List<UserDictionary> userDictionaryList;

  @JsonKey(name: 'runtimeType')
  final String $type;

  @override
  String toString() {
    return 'UserDictionaryList.empty(isLoading: $isLoading, userDictionaryList: $userDictionaryList)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _Empty &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality()
                .equals(other.userDictionaryList, userDictionaryList));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(userDictionaryList));

  @JsonKey(ignore: true)
  @override
  _$EmptyCopyWith<_Empty> get copyWith =>
      __$EmptyCopyWithImpl<_Empty>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>(
    TResult Function(bool isLoading, List<UserDictionary> userDictionaryList)
        $default, {
    required TResult Function(
            bool isLoading, List<UserDictionary> userDictionaryList)
        empty,
  }) {
    return empty(isLoading, userDictionaryList);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>(
    TResult Function(bool isLoading, List<UserDictionary> userDictionaryList)?
        $default, {
    TResult Function(bool isLoading, List<UserDictionary> userDictionaryList)?
        empty,
  }) {
    return empty?.call(isLoading, userDictionaryList);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>(
    TResult Function(bool isLoading, List<UserDictionary> userDictionaryList)?
        $default, {
    TResult Function(bool isLoading, List<UserDictionary> userDictionaryList)?
        empty,
    required TResult orElse(),
  }) {
    if (empty != null) {
      return empty(isLoading, userDictionaryList);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>(
    TResult Function(_UserDictionaryList value) $default, {
    required TResult Function(_Empty value) empty,
  }) {
    return empty(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>(
    TResult Function(_UserDictionaryList value)? $default, {
    TResult Function(_Empty value)? empty,
  }) {
    return empty?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>(
    TResult Function(_UserDictionaryList value)? $default, {
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

abstract class _Empty implements UserDictionaryList {
  factory _Empty([bool isLoading, List<UserDictionary> userDictionaryList]) =
      _$_Empty;

  factory _Empty.fromJson(Map<String, dynamic> json) = _$_Empty.fromJson;

  @override
  bool get isLoading;
  @override
  List<UserDictionary> get userDictionaryList;
  @override
  @JsonKey(ignore: true)
  _$EmptyCopyWith<_Empty> get copyWith => throw _privateConstructorUsedError;
}
