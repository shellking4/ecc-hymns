import 'package:flutter/material.dart';
import 'package:need_resume/need_resume.dart';
import '../screens/french_hymns.screen.dart';
import '../utilities/constants.util.dart';
import '../utilities/custom_drawer.util.dart';

class FrenchHymnsPage extends StatefulWidget {
  static final String id = 'french_hymns_page';
  @override
  FrenchHymnsPageState createState() => FrenchHymnsPageState();
}

class FrenchHymnsPageState extends ResumableState<FrenchHymnsPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget child_widget = FrenchHymnsScreen();
    var child = CustomDrawer(child: child_widget);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: Colors.white, primaryColor: themeColor1),
      home: child,
    );
  }

  @override
  void onResume() {
    build(context);
  }
}
