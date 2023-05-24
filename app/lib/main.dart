import 'package:ecchymns/screens/favorites.screen.dart';
import 'package:ecchymns/screens/home.screen.dart';
import 'package:ecchymns/screens/layout.screen.dart';
import 'package:flutter/material.dart';
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
          scaffoldBackgroundColor: Colors.white, primaryColor: eccBlue),
      initialRoute: WelcomeScreen.id,
      home: LayoutScreen(),
      routes: {
        HomeScreen.id: (context) => HomeScreen(),
        FavoritesScreen.id: (context) => FavoritesScreen(),
        WelcomeScreen.id: (context) => WelcomeScreen(),
        GounHymnsScreen.id: (context) => GounHymnsScreen(),
        GounHymnScreen.id: (context) => GounHymnScreen(),
        FrenchHymnsScreen.id: (context) => FrenchHymnsScreen(),
        FrenchHymnScreen.id: (context) => FrenchHymnScreen(),
        SearchSreen.id: (context) => SearchSreen(),
        AboutScreen.id: (context) => AboutScreen(),
        HymnsProgramScreen.id: (context) => HymnsProgramScreen(),
        YorubaHymnsScreen.id: (context) => YorubaHymnsScreen(),
        YorubaHymnScreen.id: (context) => YorubaHymnScreen(),
      },
    );
  }
}