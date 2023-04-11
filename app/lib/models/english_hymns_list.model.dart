import 'package:ecchymns/models/english_hymn.model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'english_hymns_list.model.g.dart';

@JsonSerializable()
class EnglishHymnsList {
  final List<EnglishHymn>? hymns;

  EnglishHymnsList(this.hymns);

  factory EnglishHymnsList.fromJson(Map<String, dynamic> json) =>
      _$EnglishHymnsListFromJson(json);

  Map<String, dynamic> toJson() => _$EnglishHymnsListToJson(this);
}
