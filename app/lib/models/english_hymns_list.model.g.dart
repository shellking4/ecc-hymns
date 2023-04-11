// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'english_hymns_list.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EnglishHymnsList _$EnglishHymnsListFromJson(Map<String, dynamic> json) =>
    EnglishHymnsList(
      (json['hymns'] as List<dynamic>?)
          ?.map((e) => EnglishHymn.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$EnglishHymnsListToJson(EnglishHymnsList instance) =>
    <String, dynamic>{
      'hymns': instance.hymns,
    };
