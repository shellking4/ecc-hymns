import 'package:flutter/material.dart';
import '../utilities/app_bar.util.dart';
import '../utilities/base_scaffold.util.dart';

// ignore: must_be_immutable
class AboutScreen extends StatelessWidget {
  static String id = "about_screen";
  final String routeName = "À PROPOS";

  get appBarTitle => routeName;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        appBar: MyAppBar(
        appBarTitle: appBarTitle, 
        routeName: routeName, 
        portraitLeftValue: 20.2, 
        portraitRightValue: 45.4, 
        landscapeLeftvalue: 200.2, 
        landscapeRightValue: 197.1
      ),
        scaffoldBody: Center(
          child: Card(
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
