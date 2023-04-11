// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'french_hymns_data.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrenchHymnsData _$FrenchHymnsDataFromJson(Map<String, dynamic> json) =>
    FrenchHymnsData(
      (json['data'] as List<dynamic>?)
          ?.map((e) => FrenchHymn.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['meta'],
    );

Map<String, dynamic> _$FrenchHymnsDataToJson(FrenchHymnsData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
