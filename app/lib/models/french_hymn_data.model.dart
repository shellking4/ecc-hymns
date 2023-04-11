import 'package:ecchymns/models/french_hymn.model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'french_hymn_data.model.g.dart';

@JsonSerializable()
class FrenchHymnData {
  final FrenchHymn? data;
  final dynamic meta;

  FrenchHymnData(this.data, this.meta);

  factory FrenchHymnData.fromJson(Map<String, dynamic> json) =>
      _$FrenchHymnDataFromJson(json);

  Map<String, dynamic> toJson() => _$FrenchHymnDataToJson(this);
}
