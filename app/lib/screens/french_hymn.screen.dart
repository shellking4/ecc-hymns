import 'package:ecchymns/utilities/base_scaffold.util.dart';
import 'package:flutter/material.dart';
import '../database/database.dart';
import '../utilities/app_bar.util.dart';
import '../utilities/button.util.dart';
import '../utilities/constants.util.dart';

class FrenchHymnScreen extends StatefulWidget {
  static const String id = 'french_hymn_screen';
  final String routeName = "CANTIQUES FRANÇAIS";
  final FrHymn? frenchHymnItem;
  FrenchHymnScreen({Key? key, this.frenchHymnItem}) : super(key: key);

  @override
  _FrenchHymnScreenState createState() => _FrenchHymnScreenState();
}

class _FrenchHymnScreenState extends State<FrenchHymnScreen> {
  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  get appBarTitle => "CANTIQUE FRANÇAIS N°${widget.frenchHymnItem!.number}";

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Colors.white, primaryColor: themeColor1),
        home: BaseScaffold(
          appBar: MyAppBar(
            appBarTitle: appBarTitle, 
            routeName: widget.routeName,
            portraitLeftValue: 20.2, 
            portraitRightValue: 45.4, 
            landscapeLeftvalue: 200.2, 
            landscapeRightValue: 197.1
          ),
          scaffoldBody: SingleChildScrollView(
          child: ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "CANTIQUE N°${widget.frenchHymnItem!.number}",
                  style: TextStyle(
                      fontFamily: "Kiwi",
                      fontSize: 15.6,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(height: 20.0),
                Text(widget.frenchHymnItem!.content,
                    style: TextStyle(fontFamily: "Kiwi", fontSize: 17.0, color: Colors.black)),
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
