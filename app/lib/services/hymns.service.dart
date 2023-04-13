import 'dart:convert';

import 'package:ecchymns/models/english_hymn.model.dart';
import 'package:ecchymns/models/french_hymn.model.dart';
import 'package:ecchymns/models/goun_hymns_data.model.dart';
import 'package:ecchymns/models/hymns_program.model.dart';
import 'package:ecchymns/models/yoruba_hymn.model.dart';
import 'package:ecchymns/services/rest.config.dart';
import '../models/goun_hymn.model.dart';

class HymnsService {
  static Future<List<GounHymn>> getAllGounHymns() async {
    List<GounHymn>? hymns;
    try {
      final response = await HTTP.client.get<String>(APIEndpoints.gounHymnsUrl);
      String data = "${response.data}";
      final jsonData = jsonDecode(data);
      var hymnsListData = GounHymnsData.fromJson(jsonData);
      hymns = hymnsListData.data!;
      print(hymns[0].attributes?.title);
    } catch (exception) {
      print(exception.toString());
    }
    return hymns!;
  }

  static Future<List<FrenchHymn>>? getAllFrenchHymns() async {
    return [];
  }

  static Future<List<YorubaHymn>> getAllYorubaHymns() async {
    return [];
  }

  static Future<List<EnglishHymn>> getAllEnglishHymns() async {
    return [];
  }

  static Future<List<HymnsProgram>> getAllHymnsProgram() async {
    return [];
  }

  static Future<List<GounHymn>> getGounHymnSearchResults(
      String searchQuery) async {
    return [];
  }

  static Future<List<FrenchHymn>> getFrenchHymnSearchResults(
      String searchQuery) async {
    return [];
  }

  static Future<List<YorubaHymn>> getYorubaHymnSearchResults(
      String searchQuery) async {
    return [];
  }

  static Future<List<EnglishHymn>>? getEnglishHymnSearchResults(
      String searchQuery) async {
    return [];
  }
}
