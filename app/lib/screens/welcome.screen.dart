import 'dart:async';
import 'package:ecchymns/screens/author.screen.dart';
import 'package:ecchymns/screens/home.screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:page_transition/page_transition.dart';

import '../pages/goun_hymns.page.dart';
import '../utilities/constants.util.dart';
import '../utilities/functions.util.dart';
import 'layout.screen.dart';

class WelcomeScreen extends StatefulWidget {
  static const String id = 'welcome_screen';
  @override
  _WelcomeScreenState createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  initState() {
    super.initState();
    startTime();
  }

  startTime() async {
    var duration = Duration(seconds: 6);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushAndRemoveUntil(
      context,
      PageTransition(
        type: PageTransitionType.rightToLeft,
        alignment: Alignment.bottomCenter,
        child: AuthorScreen(),
        duration: Duration(milliseconds: 500)
      ),
      (route) => false,
    );
  }

  @override
  Widget build(BuildContext context) {
    bool isPortrait = false;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      isPortrait = true;
    }
    return Scaffold(
        backgroundColor: Colors.white,
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Image.asset(
                  'assets/images/ecc-logo.png',
                  height: 130,
                  width: 130,
                ),
                SizedBox(
                  height: (isPortrait) ? 0.0 : 45.0,
                  width: (isPortrait) ? 30 : 176,
                ),
                Center(
                  child: Text(
                    "ECC CANTIQUES",
                    style: TextStyle(fontWeight: FontWeight.w900, fontSize: 17, fontFamily: "Inter", color: eccBlue),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
