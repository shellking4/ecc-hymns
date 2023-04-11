import 'package:ecchymns/models/french_hymn.model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'french_hymns_list.model.g.dart';

@JsonSerializable()
class FrenchHymnsList {
  final List<FrenchHymn>? hymns;

  FrenchHymnsList(this.hymns);

  factory FrenchHymnsList.fromJson(Map<String, dynamic> json) =>
      _$FrenchHymnsListFromJson(json);

  Map<String, dynamic> toJson() => _$FrenchHymnsListToJson(this);
}
