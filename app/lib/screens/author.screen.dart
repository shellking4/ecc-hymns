import 'dart:async';
import 'package:ecchymns/screens/home.screen.dart';
import 'package:ecchymns/screens/layout.screen.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import '../utilities/constants.util.dart';
import 'package:url_launcher/url_launcher.dart';

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
    var duration = Duration(seconds: 3);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushAndRemoveUntil(
      context,
      PageTransition(
        type: PageTransitionType.topToBottom,
        child: LayoutScreen(),
        duration: Duration(milliseconds: 250)
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
        backgroundColor: themeColor1,
        body: Center(
          child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.0),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: <Widget>[
                Center(
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 9),
                    child: Text(
                      "ECC CANTIQUES",
                      style: TextStyle(fontSize: 17, fontFamily: "Inter", color: eccWhiteTheme),
                    ),
                  ),
                ),
                SizedBox(
                  height: (isPortrait) ? 0.0 : 200.0,
                  width: (isPortrait) ? 30 : 176,
                ),
                Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 10),
                  child: Center(
                    child: Text(
                      "BROUGHT TO YOU BY",
                      style: TextStyle(fontSize: 15, fontFamily: "Inter", color: eccWhiteTheme),
                    ),
                  ),
                ),
                SizedBox(
                  height: (isPortrait) ? 0.0 : 200.0,
                  width: (isPortrait) ? 30 : 176,
                ),
                Center(
                  child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                    TextButton(
                      onPressed: launchDonaldTwitterUrl,
                      child: Text(
                        "Donald",
                        style: TextStyle(fontSize: 15, fontFamily: "Kiwi", color: Color.fromARGB(255, 194, 188, 188)),
                      ),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    Text(
                      "and",
                      style: TextStyle(fontSize: 15, fontFamily: "InterRegular", color: eccWhiteTheme),
                    ),
                    SizedBox(
                      width: 3,
                    ),
                    TextButton(
                      onPressed: launchGerryTwitterUrl,
                      child: Text(
                        "Gerry",
                        style: TextStyle(fontSize: 15, fontFamily: "InterRegular", color: Color.fromARGB(255, 203, 197, 197)),
                      ),
                    ),
                  ]),
                ),
              ],
            ),
          ),
        ));
  }

  Future<void> launchGerryTwitterUrl() async {
    var gerryTwitter = Uri.parse("http://someUrl");
    if (!await launchUrl(gerryTwitter)) {
      throw Exception('Could not launch $gerryTwitter');
    }
  }

  Future<void> launchDonaldTwitterUrl() async {
    var donaldTwitter = Uri.parse("http://someUrl");
    if (!await launchUrl(donaldTwitter)) {
      throw Exception('Could not launch $donaldTwitter');
    }
  }
}
