import 'package:ecchymns/utilities/base_scaffold.util.dart';
import 'package:flutter/material.dart';
import '../database/database.dart';
import '../utilities/app_bar.util.dart';
import '../utilities/button.util.dart';
import '../utilities/constants.util.dart';

class GounHymnScreen extends StatefulWidget {
  static const String id = 'goun_hymn_screen';
  final String routeName = "CANTIQUES GOUN";
  final GounHymn? gounHymnItem;
  GounHymnScreen({Key? key, this.gounHymnItem}) : super(key: key);

  @override
  _GounHymnScreenState createState() => _GounHymnScreenState();
}

class _GounHymnScreenState extends State<GounHymnScreen> {
  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  get appBarTitle => "CANTIQUE GOUN N°${widget.gounHymnItem!.number}";

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
                  "CANTIQUE N°${widget.gounHymnItem!.number}",
                  style: TextStyle(
                      fontFamily: "Kiwi",
                      fontSize: 15.6,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(height: 20.0),
                Text(widget.gounHymnItem!.content,
                    style: TextStyle(fontFamily: "Kiwi", fontSize: 16.0, color: Colors.black)),
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
