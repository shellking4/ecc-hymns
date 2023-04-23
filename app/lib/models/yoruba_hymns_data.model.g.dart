// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yoruba_hymns_data.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

YorubaHymnsData _$YorubaHymnsDataFromJson(Map<String, dynamic> json) =>
    YorubaHymnsData(
      (json['data'] as List<dynamic>?)
          ?.map((e) => YorubaHymn.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['meta'],
    );

Map<String, dynamic> _$YorubaHymnsDataToJson(YorubaHymnsData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
