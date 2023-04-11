// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goun_hymn_data.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GounHymnData _$GounHymnDataFromJson(Map<String, dynamic> json) => GounHymnData(
      json['data'] == null
          ? null
          : GounHymn.fromJson(json['data'] as Map<String, dynamic>),
      json['meta'],
    );

Map<String, dynamic> _$GounHymnDataToJson(GounHymnData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
