import 'package:flutter/material.dart';

import 'pages/french_hymns.page.dart';
import 'pages/goun_hymns.page.dart';
import 'pages/yoruba_hymns.page.dart';
import 'screens/about.screen.dart';
import 'screens/french_hymn.screen.dart';
import 'screens/french_hymns.screen.dart';
import 'screens/goun_hymn.screen.dart';
import 'screens/goun_hymns.screen.dart';
import 'screens/hymns_program.screen.dart';
import 'screens/search.screen.dart';
import 'screens/welcome.screen.dart';
import 'screens/yoruba_hymn.screen.dart';
import 'screens/yoruba_hymns.screen.dart';
import 'utilities/constants.util.dart';

void main() => runApp(EccHymns());

class EccHymns extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, primaryColor: themeColor1),
      initialRoute: WelcomeScreen.id,
      routes: {
        WelcomeScreen.id: (context) => WelcomeScreen(),
        GounHymnsScreen.id: (context) => GounHymnsScreen(),
        GounHymnScreen.id: (context) => GounHymnScreen(),
        FrenchHymnsScreen.id: (context) => FrenchHymnsScreen(),
        FrenchHymnScreen.id: (conetxt) => FrenchHymnScreen(),
        SearchSreen.id: (context) => SearchSreen(),
        AboutScreen.id: (context) => AboutScreen(),
        HymnsProgramScreen.id: (context) => HymnsProgramScreen(),
        GounHymnsPage.id: (context) => GounHymnsPage(),
        FrenchHymnsPage.id: (context) => FrenchHymnsPage(),
        YorubaHymnsScreen.id: (context) => YorubaHymnsScreen(),
        YorubaHymnScreen.id: (context) => YorubaHymnScreen(),
        YorubaHymnsPage.id: (context) => YorubaHymnsPage(),
      },
    );
  }
}