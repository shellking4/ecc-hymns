import 'package:ecchymns/utilities/constants.util.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import '../pages/french_hymns.page.dart';
import '../pages/goun_hymns.page.dart';
import '../pages/hymns_programs.page.dart';
import '../pages/yoruba_hymns.page.dart';
import 'menu_item.util.dart';

class AppMenu extends StatelessWidget {
  const AppMenu({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isPortrait = false;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      isPortrait = true;
    }
    return Material(
      color: Colors.white,
      child: SafeArea(
        left: true,
        child: Theme(
          data: ThemeData(brightness: Brightness.dark),
          child: isPortrait
              ? buildMenuItems(context)
              : SingleChildScrollView(
                  child: buildMenuItems(context),
                ),
        ),
      ),
    );
  }

  Widget buildMenuItems(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10),
      child: Container(
        width: MediaQuery.of(context).size.width * 0.85,
        child: Column(
          children: <Widget>[
            Container(
              height: 165,
              width: MediaQuery.of(context).size.width * 0.85,
              color: eccWhiteTheme,
              child: Text("Some text here"),
            ),
            SizedBox(
              height: 7,
            ),
            ListTile(
                title: Text(
              "CC GEEKS",
              textAlign: TextAlign.center,
              style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.w900,
                  letterSpacing: 3.5),
            )),
            Menu_Item(
              icon1: FontAwesomeIcons.circleInfo,
              color: Colors.white,
              title: "À Propos",
              screen: GounHymnsPage(),
            ),
            Menu_Item(
                icon1: FontAwesomeIcons.share,
                color: Colors.white,
                title: "Partager",
                screen: FrenchHymnsPage()),
            Menu_Item(
              icon1: FontAwesomeIcons.doorOpen,
              color: Colors.white,
              title: "Quitter",
              screen: YorubaHymnsPage(),
            ),
            SizedBox(height: 150,),
          ],
        ),
      ),
    );
  }
}
