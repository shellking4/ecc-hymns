// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goun_hymns_data.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GounHymnsData _$GounHymnsDataFromJson(Map<String, dynamic> json) =>
    GounHymnsData(
      (json['data'] as List<dynamic>?)
          ?.map((e) => GounHymn.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['meta'],
    );

Map<String, dynamic> _$GounHymnsDataToJson(GounHymnsData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
