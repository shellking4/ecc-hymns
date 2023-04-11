import 'package:flutter/material.dart';
import '../utilities/app_menu.util.dart';

// ignore: must_be_immutable
class AboutScreen extends StatelessWidget {
  static String id = "about_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
            toolbarHeight: 70.0,
            title: Row(
              children: <Widget>[
                SizedBox(width: 43.0),
                Text(
                  "ECC CANTIQUES ",
                  style: TextStyle(
                      fontSize: 17.0,
                      letterSpacing: 0.6,
                      fontFamily: "CodeCaption"),
                ),
              ],
            )),
        drawer: AppMenu(),
        body: Center(
          child: Card(
            color: Color(0xFF6E4E57),
            margin: EdgeInsets.only(
                top: 180.0, bottom: 180.0, left: 20.0, right: 20.0),
            elevation: 15.0,
            child: Center(
              child: Text(
                  "ECC HYMNS est une application qui vise à offrir une meilleure expérience numérique d'exécution des cantiques de l'ECC DEVCRAFT LLC 2021 Tous droits réservés",
                  style: TextStyle(
                    fontFamily: 'CodeCaption',
                    fontSize: 19.0,
                  )),
            ),
          ),
        ));
  }
}
