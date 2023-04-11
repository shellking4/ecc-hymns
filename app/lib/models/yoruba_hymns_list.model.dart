import 'package:ecchymns/models/french_hymn.model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'yoruba_hymns_list.model.g.dart';

@JsonSerializable()
class YorubaHymnsList {
  final List<FrenchHymn>? hymns;

  YorubaHymnsList(this.hymns);

  factory YorubaHymnsList.fromJson(Map<String, dynamic> json) =>
      _$YorubaHymnsListFromJson(json);

  Map<String, dynamic> toJson() => _$YorubaHymnsListToJson(this);
}
