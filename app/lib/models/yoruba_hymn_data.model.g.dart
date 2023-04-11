// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yoruba_hymn_data.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

YorubaHymnData _$YorubaHymnDataFromJson(Map<String, dynamic> json) =>
    YorubaHymnData(
      json['hymnData'] == null
          ? null
          : YorubaHymn.fromJson(json['hymnData'] as Map<String, dynamic>),
      json['meta'],
    );

Map<String, dynamic> _$YorubaHymnDataToJson(YorubaHymnData instance) =>
    <String, dynamic>{
      'hymnData': instance.hymnData,
      'meta': instance.meta,
    };
