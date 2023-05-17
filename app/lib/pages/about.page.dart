import 'package:flutter/material.dart';
import 'package:need_resume/need_resume.dart';
import '../screens/about.screen.dart';
import '../utilities/constants.util.dart';
import '../utilities/custom_drawer.util.dart';


class AboutPage extends StatefulWidget {
  static final String id = 'goun_hymns_page';

  const AboutPage({Key? key}) : super(key: key);

  @override
  AboutPageState createState() => AboutPageState();
}

class AboutPageState extends ResumableState<AboutPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget child_widget = AboutScreen();
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
