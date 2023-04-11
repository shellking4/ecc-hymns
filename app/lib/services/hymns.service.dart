import 'package:ecchymns/models/english_hymn.model.dart';
import 'package:ecchymns/models/french_hymn.model.dart';
import 'package:ecchymns/models/hymns_program.model.dart';
import 'package:ecchymns/models/yoruba_hymn.model.dart';
import '../models/goun_hymn.model.dart';

class HymnsService {
  static Future<List<GounHymn>> getAllGounHymns() async {
    return [];
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

  static Future<List<GounHymn>> getGounHymnSearchResults(String searchQuery) async {
    return [];
  }

  static Future<List<FrenchHymn>> getFrenchHymnSearchResults(String searchQuery) async {
    return [];
  }

  static Future<List<YorubaHymn>> getYorubaHymnSearchResults(String searchQuery) async {
    return [];
  }

  static Future<List<EnglishHymn>>? getEnglishHymnSearchResults(String searchQuery) async {
    return [];
  }
}
