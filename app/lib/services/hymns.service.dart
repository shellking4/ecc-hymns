import 'package:drift/drift.dart';
import '../database/database.dart';

class HymnsService {
  static HymnsDb db = HymnsDb();

  static Future<List<GounHymn>> getAllGounHymns() async {
    return await db.allGounHymns().get();
  }

  static Future<List<FrHymn>> getAllFrenchHymns() async {
    return await db.allFrenchHymns().get();
  }

  static Future<List<YrHymn>> getAllYorubaHymns() async {
    return await db.allYorubaHymns().get();
  }

  static Future<List<EnHymn>> getAllEnglishHymns() async {
    return await db.allEnglishHymns().get();
  }

  static Future<List<HymnProgram>> getAllHymnsProgram() async {
    return await db.allHymnPrograms().get();
  }

  static Future<List<GounHymn>> getGounHymnSearchResults(String searchQuery) async {
    RegExp re = RegExp(r'[0-9]+$');
    if (re.hasMatch(searchQuery)) {
      String content = "gounHymns MATCH '$searchQuery'";
      var match = CustomExpression<bool>(content);
      return await db.gounHymnSearchResults(predicate: (hymn) => match).get();
    }
    searchQuery.toUpperCase();
    String content = "gounHymns MATCH '$searchQuery*'";
    var match = CustomExpression<bool>(content);
    return await db.gounHymnSearchResults(predicate: (hymn) => match).get();
  }

  static Future<List<FrHymn>> getFrenchHymnSearchResults(String searchQuery) async {
    RegExp re = RegExp(r'[0-9]+$');
    if (re.hasMatch(searchQuery)) {
      String content = "frHymns MATCH '$searchQuery'";
      var match = CustomExpression<bool>(content);
      return await db.frenchHymnSearchResults(predicate: (hyln) => match).get();
    }
    searchQuery.toUpperCase();
    String content = "frHymns MATCH '$searchQuery*'";
    var match = CustomExpression<bool>(content);
    return await db.frenchHymnSearchResults(predicate: (hymn) => match).get();
  }

  static Future<List<YrHymn>> getYorubaHymnSearchResults(String searchQuery) async {
    RegExp re = RegExp(r'[0-9]+$');
    if (re.hasMatch(searchQuery)) {
      String content = "yrHymns MATCH '$searchQuery'";
      var match = CustomExpression<bool>(content);
      return await db.yorubaHymnSearchResults(predicate: (hymn) => match).get();
    }
    searchQuery.toUpperCase();
    String content = "yrHymns MATCH '$searchQuery*'";
    var match = CustomExpression<bool>(content);
    return await db.yorubaHymnSearchResults(predicate: (hymn) => match).get();
  }

  static Future<List<EnHymn>> getEnglishHymnSearchResults(String searchQuery) async {
    RegExp re = RegExp(r'[0-9]+$');
    if (re.hasMatch(searchQuery)) {
      String content = "enHymns MATCH '$searchQuery'";
      var match = CustomExpression<bool>(content);
      return await db.englishHymnSearchResults(predicate: (hymn) => match).get();
    }
    searchQuery.toUpperCase();
    String content = "enHymns MATCH '$searchQuery*'";
    var match = CustomExpression<bool>(content);
    return await db.englishHymnSearchResults(predicate: (hymn) => match).get();
  }

  static Future<int> setFavoriteGounHymn(String hymnNumber) async {
    return await db.setFavoriteGounHymn(hymnNumber);
  }

  static Future<int> setFavoriteFrenchHymn(String hymnNumber) async {
    return await db.setFavoriteFrenchHymn(hymnNumber);
  }

  static Future<int> setFavoriteYorubaHymn(String hymnNumber) async {
    return await db.setFavoriteYorubaHymn(hymnNumber);
  }

  static Future<int> setFavoriteEnglishHymn(String hymnNumber) async {
    return await db.setFavoriteEnglishHymn(hymnNumber);
  }

  static Future<int> removeFavoriteGounHymn(String hymnNumber) async {
    return await db.removeFavoriteGounHymn(hymnNumber);
  }

  static Future<int> removeFavoriteFrenchHymn(String hymnNumber) async {
    return await db.removeFavoriteFrenchHymn(hymnNumber);
  }

  static Future<int> removeFavoriteYorubaHymn(String hymnNumber) async {
    return await db.setFavoriteYorubaHymn(hymnNumber);
  }

  static Future<int> removeFavoriteEnglishHymn(String hymnNumber) async {
    return await db.removeFavoriteEnglishHymn(hymnNumber);
  }

  static Future<List<dynamic>> getFavoritesHymns() async {
    var gounHymns = await db.gounFavoritesHymns().get();
    var frenchHymns = await db.frenchFavoritesHymns().get();
    var yorubaHymns = await db.yorubaFavoritesHymns().get();
    var hymns = [...gounHymns, ...frenchHymns, ...yorubaHymns];
    hymns = hymns.toSet().toList();
    return hymns;
  }
}
