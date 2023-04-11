// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'hymns_program.model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

HymnsProgram _$HymnsProgramFromJson(Map<String, dynamic> json) => HymnsProgram(
      json['id'] as int?,
      json['attributes'] == null
          ? null
          : HymnProgramAttributes.fromJson(
              json['attributes'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$HymnsProgramToJson(HymnsProgram instance) =>
    <String, dynamic>{
      'id': instance.id,
      'attributes': instance.attributes,
    };
