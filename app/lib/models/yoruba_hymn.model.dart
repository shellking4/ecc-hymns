import 'package:ecchymns/models/hymn_attributes.model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'yoruba_hymn.model.g.dart';

@JsonSerializable()
class YorubaHymn {
  int? id;
  HymnAttributes? attributes;

  YorubaHymn(this.id, this.attributes);

  factory YorubaHymn.fromJson(Map<String, dynamic> json) =>
      _$YorubaHymnFromJson(json);

  Map<String, dynamic> toJson() => _$YorubaHymnToJson(this);
}
