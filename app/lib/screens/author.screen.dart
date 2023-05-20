import 'dart:async';
import 'package:ecchymns/screens/layout.screen.dart';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';
import '../pages/goun_hymns.page.dart';
import '../utilities/constants.util.dart';

class AuthorScreen extends StatefulWidget {
  static const String id = 'author_screen';
  @override
  _AuthorScreenState createState() => _AuthorScreenState();
}

class _AuthorScreenState extends State<AuthorScreen> {
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
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => LayoutScreen()));
  }

  @override
  Widget build(BuildContext context) {
    bool isPortrait = false;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      isPortrait = true;
    }
    return Scaffold(
        backgroundColor: themeColor1,
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: Text(
                    "ECC CANTIQUES",
                    style: TextStyle(
                      fontSize: 17,
                      fontFamily: "InterRegular",
                      color: eccWhiteTheme
                    ),
                  ),
                ),
                SizedBox(
                  height: (isPortrait) ? 0.0 : 200.0,
                  width: (isPortrait) ? 30 : 176,
                ),
                Center(
                  child: Text(
                    "BY",
                    style: TextStyle(
                      fontSize: 15, 
                      fontFamily: "InterRegular",
                      color: eccWhiteTheme
                    ),
                  ),
                ),
                SizedBox(
                  height: (isPortrait) ? 0.0 : 200.0,
                  width: (isPortrait) ? 30 : 176,
                ),
                Center(
                  child: Text(
                    "METATRONICX",
                    style: TextStyle(
                      fontSize: 15, 
                      fontFamily: "InterRegular",
                      color: eccWhiteTheme
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
