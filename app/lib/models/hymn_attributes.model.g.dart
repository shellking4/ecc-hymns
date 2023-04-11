// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hymn_attributes.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HymnAttributes _$HymnAttributesFromJson(Map<String, dynamic> json) =>
    HymnAttributes(
      json['number'] as String?,
      json['title'] as String?,
      json['content'] as String?,
      json['createdAt'] as String?,
      json['updatedAt'] as String?,
      json['publishedAt'] as String?,
    );

Map<String, dynamic> _$HymnAttributesToJson(HymnAttributes instance) =>
    <String, dynamic>{
      'number': instance.number,
      'title': instance.title,
      'content': instance.content,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'publishedAt': instance.publishedAt,
    };
