import 'package:flutter/material.dart';
import 'package:need_resume/need_resume.dart';
import '../screens/yoruba_hymns.screen.dart';
import '../utilities/constants.util.dart';
import '../utilities/custom_drawer.util.dart';

class YorubaHymnsPage extends StatefulWidget {
  static final String id = 'yoruba_hymns_page';
  @override
  YorubaHymnsPageState createState() => YorubaHymnsPageState();
}

class YorubaHymnsPageState extends ResumableState<YorubaHymnsPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget child_widget = YorubaHymnsScreen();
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
