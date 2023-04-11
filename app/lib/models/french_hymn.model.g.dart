// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'french_hymn.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrenchHymn _$FrenchHymnFromJson(Map<String, dynamic> json) => FrenchHymn(
      json['id'] as int?,
      json['attributes'] == null
          ? null
          : HymnAttributes.fromJson(json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$FrenchHymnToJson(FrenchHymn instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };
