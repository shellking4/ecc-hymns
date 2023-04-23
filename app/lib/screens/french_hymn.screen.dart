import 'package:ecchymns/models/french_hymn.model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_html/flutter_html.dart';
import '../utilities/app_bar.util.dart';
import '../utilities/button.util.dart';
import '../utilities/constants.util.dart';

class FrenchHymnScreen extends StatefulWidget {
  static const String id = 'french_hymn_screen';
  final FrenchHymn? frenchHymnItem;
  FrenchHymnScreen({Key? key, this.frenchHymnItem}) : super(key: key);

  @override
  _FrenchHymnScreenState createState() => _FrenchHymnScreenState();
}

class _FrenchHymnScreenState extends State<FrenchHymnScreen> {
  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  String setAppBarTitle() {
    return "CANTIQUE FRANÇAIS N°${widget.frenchHymnItem?.attributes?.number}";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Colors.white, primaryColor: themeColor1),
        home: Scaffold(
            appBar: MyAppBar.getAppBar(context, setAppBarTitle(), FrenchHymnScreen.id, 23.9, 11.1, 184.3, 162.1),
            body: SingleChildScrollView(
              child: ListTile(
                title: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    SizedBox(
                      height: 15.0,
                    ),
                    Text(
                      "CANTIQUE N°${widget.frenchHymnItem?.attributes?.number}",
                      style: TextStyle(
                          fontFamily: "Kiwi",
                          fontSize: 15.6,
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                    SizedBox(height: 20.0),
                    Html(
                        data: "${widget.frenchHymnItem?.attributes?.content}",
                        style: {"p": Style(fontFamily: "Kiwi", fontSize: FontSize(18), color: Colors.black)}),
                    SizedBox(height: 300.0),
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
