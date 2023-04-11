import 'package:ecchymns/models/french_hymn.model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'french_hymns_data.model.g.dart';


@JsonSerializable()
class FrenchHymnsData {
  final List<FrenchHymn>? data;
  final dynamic meta;

  FrenchHymnsData(this.data, this.meta);

  factory FrenchHymnsData.fromJson(Map<String, dynamic> json) =>
      _$FrenchHymnsDataFromJson(json);

  Map<String, dynamic> toJson() => _$FrenchHymnsDataToJson(this);
}
