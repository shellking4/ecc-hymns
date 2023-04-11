import 'package:ecchymns/models/hymn_program_attributes.model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'hymns_program.model.g.dart';

@JsonSerializable()
class HymnsProgram {
  int? id;
  HymnProgramAttributes? attributes;

  HymnsProgram(this.id, this.attributes);

  factory HymnsProgram.fromJson(Map<String, dynamic> json) =>
      _$HymnsProgramFromJson(json);

  Map<String, dynamic> toJson() => _$HymnsProgramToJson(this);
}
