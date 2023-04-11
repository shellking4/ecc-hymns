// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'french_hymn_data.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrenchHymnData _$FrenchHymnDataFromJson(Map<String, dynamic> json) =>
    FrenchHymnData(
      json['data'] == null
          ? null
          : FrenchHymn.fromJson(json['data'] as Map<String, dynamic>),
      json['meta'],
    );

Map<String, dynamic> _$FrenchHymnDataToJson(FrenchHymnData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
