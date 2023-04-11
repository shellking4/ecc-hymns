// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'goun_hymns_list.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GounHymnsList _$GounHymnsListFromJson(Map<String, dynamic> json) =>
    GounHymnsList(
      (json['hymns'] as List<dynamic>?)
          ?.map((e) => GounHymn.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GounHymnsListToJson(GounHymnsList instance) =>
    <String, dynamic>{
      'hymns': instance.hymns,
    };
