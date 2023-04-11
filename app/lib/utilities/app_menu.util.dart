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
      color: Color(0xFF318CE7),
      child: SafeArea(
        child: Theme(
          data: ThemeData(brightness: Brightness.dark),
          child: isPortrait
              ? buildMenuItems()
              : SingleChildScrollView(
                  child: buildMenuItems(),
                ),
        ),
      ),
    );
  }

  Widget buildMenuItems() {
    return Column(
      children: <Widget>[
        SizedBox(
          height: 7,
        ),
        ListTile(
            title: Text(
          "CELESTIAL CHURCH HYMNS",
          textAlign: TextAlign.center,
          style: TextStyle(
              color: Colors.white,
              fontSize: 16,
              fontFamily: "Kiwi",
              fontWeight: FontWeight.w900,
              letterSpacing: 3.5),
        )),
        Menu_Item(
          icon1: FontAwesomeIcons.g,
          icon2: FontAwesomeIcons.n,
          color: Color(0xFF318CE7),
          title: "CANTIQUES   GOUN",
          screen: GounHymnsPage(),
        ),
        SizedBox(
          height: 24,
        ),
        Menu_Item(
            icon1: FontAwesomeIcons.f,
            icon2: FontAwesomeIcons.r,
            color: Color(0xFF318CE7),
            title: "CANTIQUES   FRANÇAIS",
            screen: FrenchHymnsPage()),
        SizedBox(
          height: 24,
        ),
        Menu_Item(
          icon1: FontAwesomeIcons.y,
          icon2: FontAwesomeIcons.r,
          color: Color(0xFF318CE7),
          title: "CANTIQUES   YORUBA",
          screen: YorubaHymnsPage(),
        ),
        SizedBox(
          height: 24,
        ),
        Menu_Item(
          icon1: FontAwesomeIcons.p,
          icon2: FontAwesomeIcons.r,
          color: Color(0xFF318CE7),
          title: "PROGRAMMES CANTIQUES",
          screen: HymnsProgramPage(),
        ),
        /*Menu_Item(
                    icon1: Mdi.information,
                    color: Color(0xFF318CE7),
                    title: "À PROPOS",
                    screen: AboutPage(),
                  ),*/
      ],
    );
  }
}
