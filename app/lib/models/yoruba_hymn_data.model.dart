import 'package:ecchymns/models/yoruba_hymn.model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'yoruba_hymn_data.model.g.dart';

@JsonSerializable()
class YorubaHymnData {
  final YorubaHymn? hymnData;
  final dynamic meta;

  YorubaHymnData(this.hymnData, this.meta);

  factory YorubaHymnData.fromJson(Map<String, dynamic> json) =>
      _$YorubaHymnDataFromJson(json);

  Map<String, dynamic> toJson() => _$YorubaHymnDataToJson(this);
}
