import 'package:ecchymns/models/yoruba_hymn.model.dart';
import 'package:json_annotation/json_annotation.dart';
part 'yoruba_hymns_data.model.g.dart';


@JsonSerializable()
class YorubaHymnsData {
  final List<YorubaHymn>? data;
  final dynamic meta;

  YorubaHymnsData(this.data, this.meta);

  factory YorubaHymnsData.fromJson(Map<String, dynamic> json) =>
      _$YorubaHymnsDataFromJson(json);

  Map<String, dynamic> toJson() => _$YorubaHymnsDataToJson(this);
}
