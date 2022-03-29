import 'package:dictionary/core/domain/entities/dictionary_image.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'dictionary.freezed.dart';
part 'dictionary.g.dart';

@freezed
class UserData with _$UserData {
  const factory UserData({
    required String deviceId,
  }) = _UserData;
  factory UserData.fromJson(Map<String, dynamic> json) =>
      _$UserDataFromJson(json);
}

@freezed
class AnswerData with _$AnswerData {
  const factory AnswerData({
    required int day,
    required int date,
    required String cardKey,
    required bool remember,
  }) = _AnswerData;
  factory AnswerData.fromJson(Map<String, dynamic> json) =>
      _$AnswerDataFromJson(json);
}

@freezed
class Dictionary with _$Dictionary {
  const factory Dictionary({
    required String key,
    required String title,
    required String description,
    required DictionaryImage img,
  }) = _Dictionary;
  factory Dictionary.fromJson(Map<String, dynamic> json) =>
      _$DictionaryFromJson(json);
}

@freezed
class UserDayProgress with _$UserDayProgress {
  const factory UserDayProgress({
    required int progress,
    required int day,
  }) = _UserDayProgress;
  factory UserDayProgress.fromJson(Map<String, dynamic> json) =>
      _$UserDayProgressFromJson(json);
}

@freezed
class UserDictionaryProgress with _$UserDictionaryProgress {
  const factory UserDictionaryProgress({
    required int newCards,
    required int repeateCards,
    required List<UserDayProgress> dailyProgress,
  }) = _UserDictionaryProgress;
  factory UserDictionaryProgress.fromJson(Map<String, dynamic> json) =>
      _$UserDictionaryProgressFromJson(json);
}

@freezed
class UserDictionary with _$UserDictionary {
  const factory UserDictionary({
    required Dictionary dictionary,
    required UserDictionaryProgress progress,
  }) = _UserDictionary;
  factory UserDictionary.fromJson(Map<String, dynamic> json) =>
      _$UserDictionaryFromJson(json);
}

@freezed
class UserDictionaryList with _$UserDictionaryList {
  const factory UserDictionaryList({
    required bool isLoading,
    required List<UserDictionary> userDictionaryList,
  }) = _UserDictionaryList;

  factory UserDictionaryList.empty(
      [@Default(false) bool isLoading,
      @Default([]) List<UserDictionary> userDictionaryList]) = _Empty;
  factory UserDictionaryList.fromJson(Map<String, dynamic> json) =>
      _$UserDictionaryListFromJson(json);
}
