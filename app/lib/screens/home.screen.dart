import 'package:ecchymns/screens/french_hymns.screen.dart';
import 'package:ecchymns/screens/goun_hymns.screen.dart';
import 'package:ecchymns/screens/hymns_program.screen.dart';
import 'package:ecchymns/screens/yoruba_hymns.screen.dart';
import 'package:ecchymns/utilities/base_scaffold.util.dart';
import 'package:flutter/material.dart';
import '../utilities/app_bar.util.dart';
import '../utilities/home_menu_item.util.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_screen';
  final String routeName = "ECC CANTIQUES";
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  get appBarTitle => widget.routeName;

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
        onWillPop: () async {
          if (_key.currentState!.isDrawerOpen) {
            Navigator.of(context).pop();
            return false;
          }
          return false;
        },
        child: BaseScaffold(
          appBar: MyAppBar(
            appBarTitle: appBarTitle, 
            routeName: widget.routeName,
            portraitLeftValue: 60.2, 
            portraitRightValue: 45.4, 
            landscapeLeftvalue: 200.2, 
            landscapeRightValue: 197.1
          ),
          scaffoldBody: SafeArea(
            top: true,
            child: Stack(
              children: [
                Align(
                  alignment: AlignmentDirectional(0, 0),
                  child: Container(
                    width: 418,
                    height: 814,
                    decoration: BoxDecoration(
                      color: Color(0xFFF4F4F4),
                    ),
                    child: Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(0, 0, 0, 10),
                      child: ListView(
                        padding: EdgeInsets.zero,
                        scrollDirection: Axis.vertical,
                        children: [
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(18, 30, 0, 15),
                            child: Text(
                              'LES CANTIQUES DE L\'ECC',
                              style: TextStyle(fontSize: 15, fontFamily: "Kiwi", color: Colors.black),
                            ),
                          ),
                          HomeMenuItem(
                            menuTitle: 'CANTIQUES GOUN',
                            targetScreen: GounHymnsScreen(),
                          ),
                          HomeMenuItem(
                            menuTitle: 'CANTIQUES FRANÇAIS',
                            targetScreen: FrenchHymnsScreen(),
                          ),
                          HomeMenuItem(
                            menuTitle: 'CANTIQUES YORUBA',
                            targetScreen: YorubaHymnsScreen(),
                          ),
                          // HomeMenuItem(
                          //   menuTitle: 'CANTIQUES ÉVÉ',
                          //   targetScreen: YorubaHymnsScreen(),
                          // ),
                          HomeMenuItem(
                            menuTitle: 'PROGRAMMES CANTIQUES',
                            targetScreen: HymnsProgramScreen(),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ));
  }
}
