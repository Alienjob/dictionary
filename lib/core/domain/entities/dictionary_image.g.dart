// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dictionary_image.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DictionaryImage _$$_DictionaryImageFromJson(Map<String, dynamic> json) =>
    _$_DictionaryImage(
      path: json['path'] as String,
      pathType: $enumDecode(_$DictionaryImagePathTypeEnumMap, json['pathType']),
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_DictionaryImageToJson(_$_DictionaryImage instance) =>
    <String, dynamic>{
      'path': instance.path,
      'pathType': _$DictionaryImagePathTypeEnumMap[instance.pathType],
      'runtimeType': instance.$type,
    };

const _$DictionaryImagePathTypeEnumMap = {
  DictionaryImagePathType.url: 'url',
  DictionaryImagePathType.embedded: 'embedded',
};

_$_Empty _$$_EmptyFromJson(Map<String, dynamic> json) => _$_Empty(
      $type: json['runtimeType'] as String?,
    );

Map<String, dynamic> _$$_EmptyToJson(_$_Empty instance) => <String, dynamic>{
      'runtimeType': instance.$type,
    };
