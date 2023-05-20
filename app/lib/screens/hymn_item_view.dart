import 'package:ecchymns/database/database.dart';
import 'package:ecchymns/screens/french_hymn.screen.dart';
import 'package:ecchymns/screens/yoruba_hymn.screen.dart';
import 'package:ecchymns/screens/goun_hymn.screen.dart';
import 'package:ecchymns/utilities/functions.util.dart';
import '../utilities/constants.util.dart';
import 'package:flutter/material.dart';
import '../utilities/button.util.dart';

class HymnItemView extends StatelessWidget {
  final hymnItem;
  const HymnItemView({Key? key, this.hymnItem}) : super(key: key);

  String setTitle(hymn) {
    if (hymn is GounHymn) {
      return "CANTIQUE N°${hymn.number}";
    }
    if (hymn is FrHymn) {
      return "CANTIQUE N°${hymn.number}";
    }
    if (hymn is YrHymn) {
      return "CANTIQUE N°${hymn.number}";
    }
    return "CANTIQUE";
  }

  Widget buildHymnItemView(BuildContext context, data, index) {
    var hymn;
    if ((hymnItem != null) && (hymnItem is GounHymn || hymnItem is FrHymn || hymnItem is YrHymn)) {
      hymn = hymnItem;
    } else {
      hymn = data[index];
    }
    return ListTile(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            setTitle(hymn),
            style: TextStyle(
                fontFamily: "Kiwi",
                fontSize: 15.6,
                fontWeight: FontWeight.bold,
                color: Colors.black,
                decoration: TextDecoration.underline),
          ),
          SizedBox(height: 8.0),
          Text(hymn.content, style: TextStyle(fontFamily: "Kiwi", fontSize: 18, color: Colors.black)),
          SizedBox(height: 8.0),
          RoundedButton(
              color: themeColor1,
              title: "AFFICHER",
              width: 200.0,
              onPressed: () {
                getHymnAndNavigate(hymn, context);
              })
        ],
      ),
      onTap: () {
        getHymnAndNavigate(hymn, context);
      },
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

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
