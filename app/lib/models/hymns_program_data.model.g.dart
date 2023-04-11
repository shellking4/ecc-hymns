// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hymns_program_data.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HymnsProgramData _$HymnsProgramDataFromJson(Map<String, dynamic> json) =>
    HymnsProgramData(
      json['data'] == null
          ? null
          : HymnsProgram.fromJson(json['data'] as Map<String, dynamic>),
      json['meta'],
    );

Map<String, dynamic> _$HymnsProgramDataToJson(HymnsProgramData instance) =>
    <String, dynamic>{
      'data': instance.data,
      'meta': instance.meta,
    };
