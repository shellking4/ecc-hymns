import 'dart:async';
import 'package:flutter/material.dart';
import 'package:animated_text_kit/animated_text_kit.dart';

import '../pages/goun_hymns.page.dart';
import '../utilities/constants.util.dart';

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
    var duration = new Duration(seconds: 6);
    return Timer(duration, route);
  }

  route() {
    Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) => GounHymnsPage()));
  }

  @override
  Widget build(BuildContext context) {
    bool isPortrait = false;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      isPortrait = true;
    }
    return Scaffold(
        backgroundColor: themeColor1,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Row(
                children: <Widget>[
                  SizedBox(
                    height: (isPortrait) ? 0.0 : 45.0,
                    width: (isPortrait) ? 30 : 176,
                  ),
                  Container(
                      child: CircleAvatar(
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage('images/eccHymns.jpeg'),
                    radius: 20.0,
                  )),
                  SizedBox(
                    width: 20.0,
                  ),
                  Center(
                    child: TypewriterAnimatedTextKit(
                      text: ['E C C   H Y M N S'],
                      speed: Duration(milliseconds: 85),
                      repeatForever: false,
                      totalRepeatCount: 1,
                      textStyle: TextStyle(
                          fontWeight: FontWeight.w900,
                          fontSize: 24,
                          fontFamily: "Kiwi",
                          color: Colors.white),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 200.0,
              ),
              Center(
                child: TypewriterAnimatedTextKit(
                  text: ['B Y   D E V C R A F T   ,  L L C'],
                  speed: Duration(milliseconds: 85),
                  repeatForever: false,
                  totalRepeatCount: 1,
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 14,
                      fontFamily: "Kiwi",
                      color: Colors.white),
                ),
              ),
              SizedBox(
                height: 15.0,
              ),
              Center(
                child: TypewriterAnimatedTextKit(
                  text: ['d o n a l d k a n t 2 0 0 0 @ g m a i l . c o m'],
                  speed: Duration(milliseconds: 85),
                  repeatForever: false,
                  totalRepeatCount: 1,
                  textStyle: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 10,
                      fontFamily: "Kiwi",
                      color: Colors.white),
                ),
              )
            ],
          ),
        ));
  }
}
