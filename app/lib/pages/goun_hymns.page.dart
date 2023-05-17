import 'package:flutter/material.dart';
import 'package:need_resume/need_resume.dart';
import '../screens/goun_hymns.screen.dart';
import '../utilities/constants.util.dart';
import '../utilities/custom_drawer.util.dart';

class GounHymnsPage extends StatefulWidget {
  static final String id = 'goun_hymns_page';

  const GounHymnsPage({Key? key}) : super(key: key);

  @override
  GounHymnsPageState createState() => GounHymnsPageState();
}

class GounHymnsPageState extends ResumableState<GounHymnsPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget child_widget = GounHymnsScreen();
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
