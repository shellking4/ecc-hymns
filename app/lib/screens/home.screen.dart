import 'package:ecchymns/utilities/app_drawer.util.dart';
import 'package:ecchymns/utilities/base_scaffold.util.dart';
import 'package:flutter/material.dart';

import '../utilities/app_bar.util.dart';
import '../utilities/constants.util.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();


  String setAppBarTitle() {
    return "CANTIQUES GOUN";
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (_key.currentState!.isDrawerOpen) {
          Navigator.of(context).pop();
          return false;
        }
        return false;
      },
      child: BaseScaffold(
          scaffoldBody: Stack(
            children: <Widget>[
              Container()
            ],
          )),
    );
  }
}
