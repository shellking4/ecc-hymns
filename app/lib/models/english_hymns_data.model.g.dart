// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'english_hymns_data.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnglishHymnsData _$EnglishHymnsDataFromJson(Map<String, dynamic> json) =>
    EnglishHymnsData(
      (json['data'] as List<dynamic>?)
          ?.map((e) => EnglishHymn.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['meta'],
    );

Map<String, dynamic> _$EnglishHymnsDataToJson(EnglishHymnsData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
