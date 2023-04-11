// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yoruba_hymn.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

YorubaHymn _$YorubaHymnFromJson(Map<String, dynamic> json) => YorubaHymn(
      json['id'] as int?,
      json['attributes'] == null
          ? null
          : HymnAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$YorubaHymnToJson(YorubaHymn instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };
