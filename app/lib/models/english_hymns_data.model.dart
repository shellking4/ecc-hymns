import 'package:json_annotation/json_annotation.dart';
import 'english_hymn.model.dart';
part 'english_hymns_data.model.g.dart';


@JsonSerializable()
class EnglishHymnsData {
  final List<EnglishHymn>? data;
  final dynamic meta;

  EnglishHymnsData(this.data, this.meta);

  factory EnglishHymnsData.fromJson(Map<String, dynamic> json) =>
      _$EnglishHymnsDataFromJson(json);

  Map<String, dynamic> toJson() => _$EnglishHymnsDataToJson(this);
}
