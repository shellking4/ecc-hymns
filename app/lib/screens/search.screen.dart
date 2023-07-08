import 'dart:async';
import 'package:flappy_search_bar_ns/flappy_search_bar_ns.dart';
import 'package:flutter/material.dart' hide SearchBar;
import '../services/hymns.service.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../utilities/hymn_item.util.dart';

// ignore: must_be_immutable
class SearchSreen extends StatefulWidget {
  static String id = "search_screen";
  final String? previousRoute;
  SearchSreen({Key? key, this.previousRoute}) : super(key: key);

  @override
  State<SearchSreen> createState() => _SearchSreenState();
}

class _SearchSreenState extends State<SearchSreen> {
  String? msg;

  String setAppBarTitle() {
    if (widget.previousRoute == 'goun_hymns_screen' ||
        widget.previousRoute == 'goun_hymn_screen') {
      return "CANTIQUES GOUN";
    }
    if (widget.previousRoute == 'french_hymns_screen' ||
        widget.previousRoute == 'french_hymn_screen') {
      return "CANTIQUES FRANÇAIS";
    }
    if (widget.previousRoute == 'yoruba_hymns_screen' ||
        widget.previousRoute == 'yoruba_hymn_screen') {
      return "CANTIQUES YORUBA";
    }
    if (widget.previousRoute == 'english_hymns_screen' ||
        widget.previousRoute == 'english_hymn_screen') {
      return "ENGLISH HYMNS";
    }
    return "CANTIQUES GOUN";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: SearchBar<dynamic>(
          onSearch: search,
          minimumChars: 1,
          onItemFound: (hymn, int index) {
            return HymnItem(hymnItem: hymn, reloadHymns: () {}, searching: true,);
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
            return SizedBox();
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
