import 'package:ecchymns/database/database.dart';
import 'package:ecchymns/screens/french_hymn.screen.dart';
import 'package:ecchymns/screens/yoruba_hymn.screen.dart';
import 'package:ecchymns/screens/goun_hymn.screen.dart';
import 'package:ecchymns/utilities/functions.util.dart';
import 'constants.util.dart';
import 'package:flutter/material.dart';

class HymnItem extends StatelessWidget {
  final hymnItem;
  const HymnItem({Key? key, this.hymnItem}) : super(key: key);

  String setTitle(hymn) {
    return "CANTIQUE N°${hymn.number}";
  }

  Widget buildHymnItemView(BuildContext context, data, index) {
    var hymn;
    if ((hymnItem != null) && (hymnItem is GounHymn || hymnItem is FrHymn || hymnItem is YrHymn)) {
      hymn = hymnItem;
    } else {
      hymn = data[index];
    }
    return GestureDetector(
      onTap: () {
        getHymnAndNavigate(hymn, context);
      },
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(18, 0, 18, 0),
          child: Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
              color: eccBlue,
            ),
            child: Center(
              child: Text(
                setTitle(hymn),
                style: TextStyle(fontSize: 14, fontFamily: "Kiwi", color: eccWhiteTheme),
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 5),
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(18, 10, 0, 18),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      hymn.content,
                      style: TextStyle(fontSize: 14, fontFamily: "Kiwi", color: Colors.black),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      print("tapped");
                    },
                    child: Container(
                        padding: EdgeInsets.all(16),
                        alignment: Alignment.bottomRight,
                        child: IconButton(
                          onPressed: () {
                            print("tapped");
                          },
                          icon: Icon(
                            Icons.bookmark_add_outlined,
                            color: Colors.green,
                          ),
                        )),
                  ),
                ],
              ),
            ),
          ),
        ),
      ]),
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
