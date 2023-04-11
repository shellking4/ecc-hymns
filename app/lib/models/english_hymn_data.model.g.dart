// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'english_hymn_data.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnglishHymnData _$EnglishHymnDataFromJson(Map<String, dynamic> json) =>
    EnglishHymnData(
      json['data'] == null
          ? null
          : EnglishHymn.fromJson(json['data'] as Map<String, dynamic>),
      json['meta'],
    );

Map<String, dynamic> _$EnglishHymnDataToJson(EnglishHymnData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
