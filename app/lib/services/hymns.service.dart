import 'dart:convert';
import 'package:ecchymns/models/english_hymn.model.dart';
import 'package:ecchymns/models/english_hymns_data.model.dart';
import 'package:ecchymns/models/french_hymn.model.dart';
import 'package:ecchymns/models/french_hymns_data.model.dart';
import 'package:ecchymns/models/goun_hymns_data.model.dart';
import 'package:ecchymns/models/hymns_program.model.dart';
import 'package:ecchymns/models/hymns_programs_data.model.dart';
import 'package:ecchymns/models/yoruba_hymn.model.dart';
import 'package:ecchymns/models/yoruba_hymns_data.model.dart';
import 'package:ecchymns/services/rest.config.dart';
import 'package:ecchymns/utilities/functions.util.dart';
import '../models/goun_hymn.model.dart';

class HymnsService {
  static Future<List<GounHymn>> getAllGounHymns() async {
    List<GounHymn>? hymns;
    var queryUri = buildQueryUri(APIEndpoints.gounHymnsUrl);
    print(queryUri);
    try {
      final response = await HTTP.client.get<String>(queryUri);
      String data = "${response.data}";
      final jsonData = jsonDecode(data);
      var hymnsListData = GounHymnsData.fromJson(jsonData);
      hymns = hymnsListData.data!;
    } catch (exception) {
      //print(exception.toString());
    }
    return hymns!;
  }

  static Future<List<FrenchHymn>>? getAllFrenchHymns() async {
    List<FrenchHymn>? hymns;
    var queryUri = buildQueryUri(APIEndpoints.frenchHymnsUrl);
    try {
      final response = await HTTP.client.get<String>(queryUri);
      String data = "${response.data}";
      final jsonData = jsonDecode(data);
      var hymnsListData = FrenchHymnsData.fromJson(jsonData);
      hymns = hymnsListData.data!;
    } catch (exception) {
      //print(exception.toString());
    }
    return hymns!;
  }

  static Future<List<YorubaHymn>> getAllYorubaHymns() async {
    List<YorubaHymn>? hymns;
    var queryUri = buildQueryUri(APIEndpoints.yorubaHymnsUrl);
    try {
      final response = await HTTP.client.get<String>(queryUri);
      String data = "${response.data}";
      final jsonData = jsonDecode(data);
      var hymnsListData = YorubaHymnsData.fromJson(jsonData);
      hymns = hymnsListData.data!;
    } catch (exception) {
      //print(exception.toString());
    }
    return hymns!;
  }

  static Future<List<EnglishHymn>> getAllEnglishHymns() async {
    List<EnglishHymn>? hymns;
    var queryUri = buildQueryUri(APIEndpoints.englishHymnsUrl);
    try {
      final response = await HTTP.client.get<String>(queryUri);
      String data = "${response.data}";
      final jsonData = jsonDecode(data);
      var hymnsListData = EnglishHymnsData.fromJson(jsonData);
      hymns = hymnsListData.data!;
    } catch (exception) {
      //print(exception.toString());
    }
    return hymns!;
  }

  static Future<List<HymnsProgram>> getAllHymnsProgram() async {
    List<HymnsProgram>? programs;
    var queryUri = buildQueryUri(APIEndpoints.hymnsProgramsUrl);
    try {
      final response = await HTTP.client.get<String>(queryUri);
      String data = "${response.data}";
      final jsonData = jsonDecode(data);
      var hymnsListData = HymnsProgramsData.fromJson(jsonData);
      programs = hymnsListData.data!;
    } catch (exception) {
      //print(exception.toString());
    }
    return programs!;
  }

  static Future<List<GounHymn>> getGounHymnSearchResults(String searchQuery) async {
    List<GounHymn>? hymns;
    var queryUri = buildQueryUri(APIEndpoints.gounHymnsUrl, searchTerm: searchQuery);
    try {
      final response = await HTTP.client.get<String>(queryUri);
      String data = "${response.data}";
      final jsonData = jsonDecode(data);
      var hymnsListData = GounHymnsData.fromJson(jsonData);
      hymns = hymnsListData.data!;
    } catch (exception) {
      //print(exception.toString());
    }
    return hymns!;
  }

  static Future<List<FrenchHymn>> getFrenchHymnSearchResults(String searchQuery) async {
    List<FrenchHymn>? hymns;
    var queryUri = buildQueryUri(APIEndpoints.frenchHymnsUrl, searchTerm: searchQuery);
    try {
      final response = await HTTP.client.get<String>(queryUri);
      String data = "${response.data}";
      final jsonData = jsonDecode(data);
      var hymnsListData = FrenchHymnsData.fromJson(jsonData);
      hymns = hymnsListData.data!;
    } catch (exception) {
      //print(exception.toString());
    }
    return hymns!;
  }

  static Future<List<YorubaHymn>> getYorubaHymnSearchResults(String searchQuery) async {
    List<YorubaHymn>? hymns;
    var queryUri = buildQueryUri(APIEndpoints.yorubaHymnsUrl, searchTerm: searchQuery);
    try {
      final response = await HTTP.client.get<String>(queryUri);
      String data = "${response.data}";
      final jsonData = jsonDecode(data);
      var hymnsListData = YorubaHymnsData.fromJson(jsonData);
      hymns = hymnsListData.data!;
    } catch (exception) {
      //print(exception.toString());
    }
    return hymns!;
  }

  static Future<List<EnglishHymn>>? getEnglishHymnSearchResults(String searchQuery) async {
    List<EnglishHymn>? hymns;
    var queryUri = buildQueryUri(APIEndpoints.englishHymnsUrl, searchTerm: searchQuery);
    try {
      final response = await HTTP.client.get<String>(queryUri);
      String data = "${response.data}";
      final jsonData = jsonDecode(data);
      var hymnsListData = EnglishHymnsData.fromJson(jsonData);
      hymns = hymnsListData.data!;
    } catch (exception) {
      //print(exception.toString());
    }
    return hymns!;
  }
}
