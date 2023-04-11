// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'yoruba_hymns_list.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

YorubaHymnsList _$YorubaHymnsListFromJson(Map<String, dynamic> json) =>
    YorubaHymnsList(
      (json['hymns'] as List<dynamic>?)
          ?.map((e) => FrenchHymn.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$YorubaHymnsListToJson(YorubaHymnsList instance) =>
    <String, dynamic>{
      'hymns': instance.hymns,
    };
