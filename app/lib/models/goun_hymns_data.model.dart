import 'package:ecchymns/models/goun_hymn.model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'goun_hymns_data.model.g.dart';


@JsonSerializable()
class GounHymnsData {
  final List<GounHymn>? data;
  final dynamic meta;

  GounHymnsData(this.data, this.meta);

  factory GounHymnsData.fromJson(Map<String, dynamic> json) =>
      _$GounHymnsDataFromJson(json);

  Map<String, dynamic> toJson() => _$GounHymnsDataToJson(this);
}
