import 'package:flutter/material.dart';
import 'package:need_resume/need_resume.dart';
import '../screens/hymns_program.screen.dart';
import '../utilities/constants.util.dart';
import '../utilities/custom_drawer.util.dart';

class HymnsProgramPage extends StatefulWidget {
  static final String id = 'hymns_programs';

  const HymnsProgramPage({Key? key}) : super(key: key);

  @override
  HymnsProgramPageState createState() => HymnsProgramPageState();
}

class HymnsProgramPageState extends ResumableState<HymnsProgramPage> {
  @override
  Widget build(BuildContext context) {
    // ignore: non_constant_identifier_names
    Widget child_widget = HymnsProgramScreen();
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
