import 'package:json_annotation/json_annotation.dart';
part 'hymn_attributes.model.g.dart';

@JsonSerializable()
class HymnAttributes {
  String? number;
  String? title;
  String? content;
  String? createdAt;
  String? updatedAt;
  String? publishedAt;

  HymnAttributes(this.number, this.title, this.content, this.createdAt,
      this.updatedAt, this.publishedAt);

  factory HymnAttributes.fromJson(Map<String, dynamic> json) =>
      _$HymnAttributesFromJson(json);

  Map<String, dynamic> toJson() => _$HymnAttributesToJson(this);
}
