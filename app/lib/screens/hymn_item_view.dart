import 'package:ecchymns/models/french_hymn.model.dart';
import 'package:ecchymns/models/yoruba_hymn.model.dart';
import 'package:flutter/material.dart';
import '../models/goun_hymn.model.dart';
import '../utilities/button.util.dart';
import '../utilities/constants.util.dart';
import '../utilities/custom_drawer.util.dart';
import 'french_hymn.screen.dart';
import 'package:flutter_html/flutter_html.dart';
import 'goun_hymn.screen.dart';
import 'yoruba_hymn.screen.dart';

class HymnItemView extends StatelessWidget {
  final hymnItem;
  const HymnItemView({Key? key, this.hymnItem}) : super(key: key);

  String setTitle(hymn) {
    if (hymn is GounHymn) {
      return "CANTIQUE N°${hymn.attributes?.number}";
    }
    if (hymn is FrenchHymn) {
      return "CANTIQUE N°${hymn.attributes?.number}";
    }
    if (hymn is YorubaHymn) {
      return "CANTIQUE N°${hymn.attributes?.number}";
    }
    return "CANTIQUE";
  }

  Widget buildHymnItemView(BuildContext context, data, index) {
    var hymn;
    if ((hymnItem != null) && (hymnItem is GounHymn || hymnItem is FrenchHymn || hymnItem is YorubaHymn)) {
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
          Html(
              data: "${hymn?.attributes?.content}",
              style: {"p": Style(fontFamily: "Kiwi", fontSize: FontSize(16), color: Colors.black)}),
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
      Widget child = GounHymnScreen(gounHymnItem: hymnItem);
      Navigator.push(context, MaterialPageRoute(builder: (context) => CustomDrawer(child: child)));
    }
    if (hymnItem is FrenchHymn) {
      Widget child = FrenchHymnScreen(frenchHymnItem: hymnItem);
      Navigator.push(context, MaterialPageRoute(builder: (context) => CustomDrawer(child: child)));
    }
    if (hymnItem is YorubaHymn) {
      Widget child = YorubaHymnScreen(yorubaHymnItem: hymnItem);
      Navigator.push(context, MaterialPageRoute(builder: (context) => CustomDrawer(child: child)));
    }
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
