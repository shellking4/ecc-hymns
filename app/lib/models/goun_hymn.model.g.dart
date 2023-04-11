// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goun_hymn.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GounHymn _$GounHymnFromJson(Map<String, dynamic> json) => GounHymn(
      json['id'] as int?,
      json['attributes'] == null
          ? null
          : HymnAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$GounHymnToJson(GounHymn instance) => <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };
