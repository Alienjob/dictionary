// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserData _$$_UserDataFromJson(Map<String, dynamic> json) => _$_UserData(
      deviceId: json['deviceId'] as String,
    );

Map<String, dynamic> _$$_UserDataToJson(_$_UserData instance) =>
    <String, dynamic>{
      'deviceId': instance.deviceId,
    };

_$_AnswerData _$$_AnswerDataFromJson(Map<String, dynamic> json) =>
    _$_AnswerData(
      day: json['day'] as int,
      date: json['date'] as int,
      cardKey: json['cardKey'] as String,
      remember: json['remember'] as bool,
    );

Map<String, dynamic> _$$_AnswerDataToJson(_$_AnswerData instance) =>
    <String, dynamic>{
      'day': instance.day,
      'date': instance.date,
      'cardKey': instance.cardKey,
      'remember': instance.remember,
    };

_$_Dictionary _$$_DictionaryFromJson(Map<String, dynamic> json) =>
    _$_Dictionary(
      key: json['key'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      img: DictionaryImage.fromJson(json['img'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_DictionaryToJson(_$_Dictionary instance) =>
    <String, dynamic>{
      'key': instance.key,
      'title': instance.title,
      'description': instance.description,
      'img': instance.img,
    };

_$_UserDayProgress _$$_UserDayProgressFromJson(Map<String, dynamic> json) =>
    _$_UserDayProgress(
      progress: json['progress'] as int,
      day: json['day'] as int,
    );

Map<String, dynamic> _$$_UserDayProgressToJson(_$_UserDayProgress instance) =>
    <String, dynamic>{
      'progress': instance.progress,
      'day': instance.day,
    };

_$_UserDictionaryProgress _$$_UserDictionaryProgressFromJson(
        Map<String, dynamic> json) =>
    _$_UserDictionaryProgress(
      newCards: json['newCards'] as int,
      repeateCards: json['repeateCards'] as int,
      dailyProgress: (json['dailyProgress'] as List<dynamic>)
          .map((e) => UserDayProgress.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_UserDictionaryProgressToJson(
        _$_UserDictionaryProgress instance) =>
    <String, dynamic>{
      'newCards': instance.newCards,
      'repeateCards': instance.repeateCards,
      'dailyProgress': instance.dailyProgress,
    };

_$_UserDictionary _$$_UserDictionaryFromJson(Map<String, dynamic> json) =>
    _$_UserDictionary(
      dictionary:
          Dictionary.fromJson(json['dictionary'] as Map<String, dynamic>),
      progress: UserDictionaryProgress.fromJson(
          json['progress'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_UserDictionaryToJson(_$_UserDictionary instance) =>
    <String, dynamic>{
      'dictionary': instance.dictionary,
      'progress': instance.progress,
    };

_$_UserDictionaryList _$$_UserDictionaryListFromJson(
        Map<String, dynamic> json) =>
    _$_UserDictionaryList(
      isLoading: json['isLoading'] as bool,
      userDictionaryList: (json['userDictionaryList'] as List<dynamic>)
          .map((e) => UserDictionary.fromJson(e as Map<String, dynamic>))
          .toList(),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_UserDictionaryListToJson(
        _$_UserDictionaryList instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'userDictionaryList': instance.userDictionaryList,
      'runtimeType': instance.$type,
    };

_$_Empty _$$_EmptyFromJson(Map<String, dynamic> json) => _$_Empty(
      json['isLoading'] as bool? ?? false,
      (json['userDictionaryList'] as List<dynamic>?)
              ?.map((e) => UserDictionary.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
      json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_EmptyToJson(_$_Empty instance) => <String, dynamic>{
      'isLoading': instance.isLoading,
      'userDictionaryList': instance.userDictionaryList,
      'runtimeType': instance.$type,
    };
