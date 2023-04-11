// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'french_hymns_list.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

FrenchHymnsList _$FrenchHymnsListFromJson(Map<String, dynamic> json) =>
    FrenchHymnsList(
      (json['hymns'] as List<dynamic>?)
          ?.map((e) => FrenchHymn.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$FrenchHymnsListToJson(FrenchHymnsList instance) =>
    <String, dynamic>{
      'hymns': instance.hymns,
    };
