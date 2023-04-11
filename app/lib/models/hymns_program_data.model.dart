import 'package:ecchymns/models/goun_hymn.model.dart';
import 'package:ecchymns/models/hymns_program.model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'hymns_program_data.model.g.dart';

@JsonSerializable()
class HymnsProgramData {
  final HymnsProgram? data;
  final dynamic meta;

  HymnsProgramData(this.data, this.meta);

  factory HymnsProgramData.fromJson(Map<String, dynamic> json) =>
      _$HymnsProgramDataFromJson(json);

  Map<String, dynamic> toJson() => _$HymnsProgramDataToJson(this);
}
