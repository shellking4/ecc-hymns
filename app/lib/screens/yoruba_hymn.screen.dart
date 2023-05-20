import 'package:ecchymns/utilities/base_scaffold.util.dart';
import 'package:flutter/material.dart';
import '../database/database.dart';
import '../utilities/button.util.dart';
import '../utilities/constants.util.dart';

class YorubaHymnScreen extends StatefulWidget {
  static const String id = 'yoruba_hymn_screen';
  final YrHymn? yorubaHymnItem;
  YorubaHymnScreen({Key? key, this.yorubaHymnItem}) : super(key: key);

  @override
  _YorubaHymnScreenState createState() => _YorubaHymnScreenState();
}

class _YorubaHymnScreenState extends State<YorubaHymnScreen> {
  goBack(BuildContext context) {
    Navigator.pop(context);
  }

  String setAppBarTitle() {
    return "CANTIQUE YORUBA N°${widget.yorubaHymnItem!.number}";
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(scaffoldBackgroundColor: Colors.white, primaryColor: themeColor1),
        home: BaseScaffold(
            scaffoldBody: SingleChildScrollView(
          child: ListTile(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  "CANTIQUE N°${widget.yorubaHymnItem!.number}",
                  style: TextStyle(
                      fontFamily: "Kiwi",
                      fontSize: 18.0,
                      color: Colors.black,
                      fontWeight: FontWeight.bold,
                      decoration: TextDecoration.underline),
                ),
                SizedBox(height: 20.0),
                Text(widget.yorubaHymnItem!.content,
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
