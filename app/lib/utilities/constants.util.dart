import 'package:ecchymns/screens/goun_hymn.screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';

import '../pages/french_hymns.page.dart';
import '../pages/goun_hymns.page.dart';
import '../screens/goun_hymns.screen.dart';
import '../screens/home.screen.dart';

const themeColor1 = Color(0xFF318CE7);
const themeColor2 = Color(0xFF1C108A);
const themeColor3 = Color(0xFF15097B);
const eccBlue = Color(0xFF006AFF);
const eccWhiteTheme = Color(0xFFF4F4F4);

const appGradient = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(15, 18, 23, 1),
      Color.fromARGB(255, 9, 13, 43),
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topRight,
  ),
);

double iconSize = 20;

const bottomNavBarDecoration = NavBarDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(15, 18, 23, 1),
      Color.fromARGB(255, 9, 13, 43),
    ],
    begin: Alignment.bottomCenter,
    end: Alignment.topRight,
  ),
  borderRadius: BorderRadius.zero,
  colorBehindNavBar: Colors.black,
);

const appBarDecoration = BoxDecoration(
  gradient: LinearGradient(
    colors: [
      Color.fromRGBO(15, 18, 23, 1),
      Color.fromARGB(255, 9, 13, 43),
    ],
    begin: Alignment.topLeft,
    end: Alignment.topRight,
  ),
);

List<Widget> buildScreens({ Widget homeScreenReplacement = const HomeScreen(), }) {
  return [
    homeScreenReplacement,
    GounHymnsPage(),
    FrenchHymnsPage()
  ];
}

List<PersistentBottomNavBarItem> navBarsItems(BuildContext context) {
    return [
      PersistentBottomNavBarItem(
        iconSize: iconSize,
        icon: Image.asset(
          "images/pro.png",
          color: eccBlue,
          width: 55,
          height: 55,
        ),
        title: "Programmes",
        textStyle: TextStyle(fontFamily: "Kiwi", color: Colors.black, fontSize: 11.0),
        activeColorPrimary: eccBlue,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        iconSize: iconSize,
        icon: Image.asset(
          "images/home.png",
          color: eccBlue,
          width: 55,
          height: 55,
        ),
        title: "Accueil",
        textStyle: TextStyle(fontFamily: "Kiwi", fontSize: 11.0),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        iconSize: iconSize,
        icon: Image.asset(
          "images/favori.png",
          color: eccBlue,
          width: 55,
          height: 52,
        ),
        title: "Favoris",
        textStyle: TextStyle(fontFamily: "Kiwi", fontSize: 11.0),
        activeColorPrimary: Colors.white,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
    ];
  }

