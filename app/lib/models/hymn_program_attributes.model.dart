import 'package:json_annotation/json_annotation.dart';
part 'hymn_program_attributes.model.g.dart';

@JsonSerializable()
class HymnProgramAttributes {
  String? date;
  String? firstHymn;
  String? secondHymn;
  String? thirdHymn;
  String? fourthHymn;
  String? fifthHymn;
  String? sixthHymn;
  String? seventhHymn;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;

  HymnProgramAttributes(
      this.date,
      this.firstHymn,
      this.secondHymn,
      this.thirdHymn,
      this.fourthHymn,
      this.fifthHymn,
      this.sixthHymn,
      this.seventhHymn,
      this.createdAt,
      this.updatedAt,
      this.publishedAt);

  factory HymnProgramAttributes.fromJson(Map<String, dynamic> json) =>
      _$HymnProgramAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$HymnProgramAttributesToJson(this);
}
