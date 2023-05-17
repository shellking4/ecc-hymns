import 'package:flutter/material.dart';
import '../models/goun_hymn.model.dart';
import '../utilities/app_bar.util.dart';
import '../utilities/button.util.dart';
import '../utilities/constants.util.dart';
import 'package:flutter_html/flutter_html.dart';

class GounHymnScreen extends StatefulWidget {
  static const String id = 'goun_hymn_screen';
  final GounHymn? gounHymnItem;
  GounHymnScreen({Key? key, this.gounHymnItem}) : super(key: key);

  @override
  _GounHymnScreenState createState() => _GounHymnScreenState();
}

class _GounHymnScreenState extends State<GounHymnScreen> {
  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  String setAppBarTitle() {
    return "CANTIQUE GOUN N°${widget.gounHymnItem?.attributes?.number}";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
            scaffoldBackgroundColor: Colors.white, primaryColor: themeColor1),
        home: Scaffold(
            body: SingleChildScrollView(
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "CANTIQUE N°${widget.gounHymnItem?.attributes?.number}",
                      style: TextStyle(
                          fontFamily: "Kiwi",
                          fontSize: 15.6,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                    SizedBox(height: 20.0),
                    Html(
                        data: "${widget.gounHymnItem?.attributes?.content}",
                        style: {
                          "p": Style(
                            fontFamily: "Kiwi", 
                            fontSize: FontSize(18), 
                            color: Colors.black
                          )
                        }),
                    SizedBox(height: 150.0),
                    RoundedButton(
                        color: themeColor1,
                        title: "RETOUR",
                        width: 250.0,
                        onPressed: () {
                          goBack(context);
                        })
                  ],
                ),
              ),
            )));
  }
}
