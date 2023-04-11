// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hymns_programs_data.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HymnsProgramsData _$HymnsProgramsDataFromJson(Map<String, dynamic> json) =>
    HymnsProgramsData(
      (json['data'] as List<dynamic>?)
          ?.map((e) => HymnsProgram.fromJson(e as Map<String, dynamic>))
          .toList(),
      json['meta'],
    );

Map<String, dynamic> _$HymnsProgramsDataToJson(HymnsProgramsData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
