import 'package:ecchymns/models/english_hymn.model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'english_hymn_data.model.g.dart';

@JsonSerializable()
class EnglishHymnData {
  final EnglishHymn? data;
  final dynamic meta;

  EnglishHymnData(this.data, this.meta);

  factory EnglishHymnData.fromJson(Map<String, dynamic> json) =>
      _$EnglishHymnDataFromJson(json);

  Map<String, dynamic> toJson() => _$EnglishHymnDataToJson(this);
}
