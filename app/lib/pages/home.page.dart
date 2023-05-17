import 'package:ecchymns/screens/home.screen.dart';
import 'package:flutter/material.dart';
import 'package:need_resume/need_resume.dart';
import '../utilities/constants.util.dart';
import '../utilities/custom_drawer.util.dart';

class HomePage extends StatefulWidget {
  static final String id = 'goun_hymns_page';

  const HomePage({Key? key}) : super(key: key);

  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends ResumableState<HomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget child_widget = HomeScreen();
    var child = CustomDrawer(child: child_widget);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          scaffoldBackgroundColor: eccWhiteTheme, primaryColor: themeColor1),
      home: child,
    );
  }

  @override
  void onResume() {
    build(context);
  }
}
