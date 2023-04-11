import 'package:ecchymns/models/goun_hymn.model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'goun_hymn_data.model.g.dart';

@JsonSerializable()
class GounHymnData {
  final GounHymn? data;
  final dynamic meta;

  GounHymnData(this.data, this.meta);

  factory GounHymnData.fromJson(Map<String, dynamic> json) =>
      _$GounHymnDataFromJson(json);

  Map<String, dynamic> toJson() => _$GounHymnDataToJson(this);
}
