import 'package:drift/drift.dart';
import '../database/database.dart';

class HymnsService {
  static EccHymnsDb db = EccHymnsDb();

  static Future<List<GounHymn>> getAllGounHymns() async {
    return db.allGounHymns().get();
  }

  static Future<List<FrHymn>> getAllFrenchHymns() async {
    return db.allFrenchHymns().get();
  }

  static Future<List<YrHymn>> getAllYorubaHymns() async {
    return db.allYorubaHymns().get();
  }

  static Future<List<EnHymn>> getAllEnglishHymns() async {
    return db.allEnglishHymns().get();
  }

  static Future<List<HymnProgram>> getAllHymnsProgram() async {
    return db.allHymnPrograms().get();
  }

  static Future<List<GounHymn>> getGounHymnSearchResults(String searchQuery) {
    RegExp re = RegExp(r'[0-9]+$');
    if (re.hasMatch(searchQuery)) {
      String content = "gounHymns MATCH '$searchQuery'";
      var match = CustomExpression<bool>(content);
      return db.gounHymnSearchResults(predicate: (hymn) => match).get();
    }
    searchQuery.toUpperCase();
    String content = "gounHymns MATCH '$searchQuery*'";
    var match = CustomExpression<bool>(content);
    return db.gounHymnSearchResults(predicate: (hymn) => match).get();
  }

  static Future<List<FrHymn>> getFrenchHymnSearchResults(String searchQuery) {
    RegExp re = RegExp(r'[0-9]+$');
    if (re.hasMatch(searchQuery)) {
      String content = "frHymns MATCH '$searchQuery'";
      var match = CustomExpression<bool>(content);
      return db.frenchHymnSearchResults(predicate: (hyln) => match).get();
    }
    searchQuery.toUpperCase();
    String content = "frHymns MATCH '$searchQuery*'";
    var match = CustomExpression<bool>(content);
    return db.frenchHymnSearchResults(predicate: (hymn) => match).get();
  }

  static Future<List<YrHymn>> getYorubaHymnSearchResults(String searchQuery) {
    RegExp re = RegExp(r'[0-9]+$');
    if (re.hasMatch(searchQuery)) {
      String content = "yrHymns MATCH '$searchQuery'";
      var match = CustomExpression<bool>(content);
      return db.yorubaHymnSearchResults(predicate: (hymn) => match).get();
    }
    searchQuery.toUpperCase();
    String content = "yrHymns MATCH '$searchQuery*'";
    var match = CustomExpression<bool>(content);
    return db.yorubaHymnSearchResults(predicate: (hymn) => match).get();
  }

  static Future<List<EnHymn>> getEnglishHymnSearchResults(String searchQuery) {
    RegExp re = RegExp(r'[0-9]+$');
    if (re.hasMatch(searchQuery)) {
      String content = "enHymns MATCH '$searchQuery'";
      var match = CustomExpression<bool>(content);
      return db.englishHymnSearchResults(predicate: (hymn) => match).get();
    }
    searchQuery.toUpperCase();
    String content = "enHymns MATCH '$searchQuery*'";
    var match = CustomExpression<bool>(content);
    return db.englishHymnSearchResults(predicate: (hymn) => match).get();
  }
}
