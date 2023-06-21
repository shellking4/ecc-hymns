import 'dart:async';
import 'package:flappy_search_bar_ns/flappy_search_bar_ns.dart';
import 'package:flutter/material.dart' hide SearchBar;
import '../services/hymns.service.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utilities/app_bar.util.dart';
import 'hymn_item_view.dart';

// ignore: must_be_immutable
class SearchSreen extends StatelessWidget {
  static String id = "search_screen";
  final String? previousRoute;
  String? msg;

  String setAppBarTitle() {
    if (previousRoute == 'goun_hymns_screen' ||
        previousRoute == 'goun_hymn_screen') {
      return "CANTIQUES GOUN";
    }
    if (previousRoute == 'french_hymns_screen' ||
        previousRoute == 'french_hymn_screen') {
      return "CANTIQUES FRANÇAIS";
    }
    if (previousRoute == 'yoruba_hymns_screen' ||
        previousRoute == 'yoruba_hymn_screen') {
      return "CANTIQUES YORUBA";
    }
    if (previousRoute == 'english_hymns_screen' ||
        previousRoute == 'english_hymn_screen') {
      return "ENGLISH HYMNS";
    }
    return "CANTIQUES GOUN";
  }

  SearchSreen({Key? key, this.previousRoute}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      appBar: MyAppBar.getAppBar(
          context, setAppBarTitle(), SearchSreen.id, 42.2, 56.1, 200.2, 197.1),
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SearchBar<dynamic>(
          onSearch: search,
          minimumChars: 1,
          onItemFound: (hymn, int index) {
            var hymnItemView = HymnItemView(hymnItem: hymn);
            return hymnItemView.buildHymnItemView(context, null, null);
          },
          loader: Center(
            child: Text(
              "En cours de recherche...",
              style: TextStyle(fontFamily: "Kiwi", fontSize: 12.0),
            ),
          ),
          placeHolder: Center(
            child: Text(
              "Rechercher un Cantique Par Numero ou Titre",
              style: TextStyle(fontFamily: "Kiwi", fontSize: 12.0),
            ),
          ),
          emptyWidget: Center(
              child: Text("Aucun Résultat trouvé",
                  style: TextStyle(fontFamily: "Kiwi", fontSize: 14.0))),
          onError: (error) {
            return Center(
                child: Text(
              "Erreur: $error",
              style: TextStyle(fontFamily: "Kiwi", fontSize: 14.0),
            ));
          },
          hintText: "Rechercher Un Cantique",
          cancellationWidget: Icon(Icons.cancel),
          icon: Icon(FontAwesomeIcons.music),
        ),
      )),
    );
  }

  Future<List<dynamic>> search(String? query) async {
    if (query!.isEmpty) {
      msg = "Entrez Un Numero ou Titre de Cantique";
      return [];
    }
    var contextOfSearch = setAppBarTitle();
    if (contextOfSearch == "CANTIQUES GOUN") {
      return HymnsService.getGounHymnSearchResults(query);
    }
    if (contextOfSearch == "CANTIQUES FRANÇAIS") {
      return HymnsService.getFrenchHymnSearchResults(query);
    }
    if (contextOfSearch == "CANTIQUES YORUBA") {
      return HymnsService.getYorubaHymnSearchResults(query);
    }
    return [];
  }
}
