import 'package:json_annotation/json_annotation.dart';
import 'hymn_attributes.model.dart';
part 'goun_hymn.model.g.dart';

@JsonSerializable()
class GounHymn {
  int? id;
  HymnAttributes? attributes;

  GounHymn(this.id, this.attributes);

  factory GounHymn.fromJson(Map<String, dynamic> json) =>
      _$GounHymnFromJson(json);
  
  Map<String, dynamic> toJson() => _$GounHymnToJson(this);
}
