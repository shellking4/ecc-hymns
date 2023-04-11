import 'package:json_annotation/json_annotation.dart';
import 'hymn_attributes.model.dart';
part 'french_hymn.model.g.dart';

@JsonSerializable()
class FrenchHymn {
  int? id;
  HymnAttributes? attributes;

  FrenchHymn(this.id, this.attributes);

  factory FrenchHymn.fromJson(Map<String, dynamic> json) =>
      _$FrenchHymnFromJson(json);

  Map<String, dynamic> toJson() => _$FrenchHymnToJson(this);
}
