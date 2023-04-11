import 'package:ecchymns/models/french_hymn.model.dart';
import 'package:ecchymns/models/goun_hymn.model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'goun_hymns_list.model.g.dart';

@JsonSerializable()
class GounHymnsList {
  final List<GounHymn>? hymns;

  GounHymnsList(this.hymns);

  factory GounHymnsList.fromJson(Map<String, dynamic> json) =>
      _$GounHymnsListFromJson(json);

  Map<String, dynamic> toJson() => _$GounHymnsListToJson(this);
}
