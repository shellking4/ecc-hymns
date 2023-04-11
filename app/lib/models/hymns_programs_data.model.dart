import 'package:ecchymns/models/goun_hymn.model.dart';
import 'package:ecchymns/models/hymns_program.model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'hymns_programs_data.model.g.dart';


@JsonSerializable()
class HymnsProgramsData {
  final List<HymnsProgram>? data;
  final dynamic meta;

  HymnsProgramsData(this.data, this.meta);

  factory HymnsProgramsData.fromJson(Map<String, dynamic> json) =>
      _$HymnsProgramsDataFromJson(json);

  Map<String, dynamic> toJson() => _$HymnsProgramsDataToJson(this);
}
