import 'package:json_annotation/json_annotation.dart';
import 'hymn_attributes.model.dart';
part 'english_hymn.model.g.dart';

@JsonSerializable()
class EnglishHymn {
  int? id;
  HymnAttributes? attributes;

  EnglishHymn(this.id, this.attributes);

  factory EnglishHymn.fromJson(Map<String, dynamic> json) =>
      _$EnglishHymnFromJson(json);

  Map<String, dynamic> toJson() => _$EnglishHymnToJson(this);
}
