import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:unorm_dart/unorm_dart.dart' as unorm;

import '../database/database.dart';
import '../screens/french_hymn.screen.dart';
import '../screens/goun_hymn.screen.dart';
import '../screens/yoruba_hymn.screen.dart';

bool isNumeric(String? s) {
  if (s == null) {
    return false;
  }
  return double.tryParse(s) != null;
}

List<String> generatePossibleSearchTerms(String searchTerm) {
  String vowels = "aeiouy";
  if (!vowels.split("").any((v) => searchTerm.contains(v))) {
    return [searchTerm];
  }
  List<String> queries = [];
  List<String> accents = ["", "\u0300", "\u0301", "\u0302", "\u0303", "\u0308"]; // list of possible accents
  for (int i = 0; i < searchTerm.length; i++) {
    if (vowels.contains(searchTerm[i])) {
      for (int j = 0; j < accents.length; j++) {
        var normalizedString = unorm.nfc(searchTerm[i] + accents[j]);
        String query = searchTerm.replaceRange(i, i + 1, normalizedString);
        queries.add(query);
      }
    }
  }
  return queries;
}

String buildTextualQueryUri(String baseUri, String searchTerm) {
  var possibleSearchTerms = generatePossibleSearchTerms(searchTerm);
  RegExp orRegex = RegExp(r'\[\$or\]');
  int orCount = 0;
  var filtersUriPart =
      "?filters[\$or][title][\$containsi]=${possibleSearchTerms[0]}&filters[\$or][content][\$containsi]=${possibleSearchTerms[0]}";
  for (var i = 1; i < possibleSearchTerms.length; i++) {
    filtersUriPart =
        "$filtersUriPart&filters[\$or][title][\$containsi]=${possibleSearchTerms[i]}&filters[\$or][content][\$containsi]=${possibleSearchTerms[i]}";
  }
  var midQueryUri = "$baseUri$filtersUriPart";
  var queryUri = midQueryUri.replaceAllMapped(orRegex, (match) {
    orCount++;
    return '${match.group(0)}[${orCount - 1}]';
  });
  return queryUri;
}

buildSearchQueryUri(String baseUri, String searchTerm) {
  var queryUri =
      isNumeric(searchTerm) ? "$baseUri?filters[number][\$eq]=$searchTerm" : buildTextualQueryUri(baseUri, searchTerm);
  return queryUri;
}

buildQueryUri(String baseUri, {String? searchTerm}) {
  if (searchTerm != null) {
    var queryUri = isNumeric(searchTerm)
        ? "$baseUri?filters[number][\$eq]=$searchTerm"
        : buildTextualQueryUri(baseUri, searchTerm);
    queryUri = "$queryUri?sort[0]=id&pagination[page]=1&pagination[pageSize]=10000";
    return queryUri;
  }
  var queryUri = "$baseUri?sort[0]=id&pagination[page]=1&pagination[pageSize]=10000";
  return queryUri;
}

routeToScreenFromDrawer(BuildContext context, Widget screen) {
  Navigator.pop(context);
  PersistentNavBarNavigator.pushNewScreen(
    context,
    screen: screen,
    withNavBar: true,
    pageTransitionAnimation: PageTransitionAnimation.cupertino,
  );
}

routeToScreen(BuildContext context, Widget screen) {
  PersistentNavBarNavigator.pushNewScreen(
    context,
    screen: screen,
    withNavBar: true,
    pageTransitionAnimation: PageTransitionAnimation.cupertino,
  );
}

getHymnAndNavigate(hymnItem, BuildContext context) {
    if (hymnItem is GounHymn) {
      Widget screen = GounHymnScreen(gounHymnItem: hymnItem);
      routeToScreen(context, screen);
    }
    if (hymnItem is FrHymn) {
      Widget screen = FrenchHymnScreen(frenchHymnItem: hymnItem);
      routeToScreen(context, screen);
    }
    if (hymnItem is YrHymn) {
      Widget screen = YorubaHymnScreen(yorubaHymnItem: hymnItem);
      routeToScreen(context, screen);
    }
  }
