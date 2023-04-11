// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'english_hymn.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnglishHymn _$EnglishHymnFromJson(Map<String, dynamic> json) => EnglishHymn(
      json['id'] as int?,
      json['attributes'] == null
          ? null
          : HymnAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$EnglishHymnToJson(EnglishHymn instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };
