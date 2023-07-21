import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../screens/search.screen.dart';

class MyAppBar extends StatefulWidget implements PreferredSizeWidget {
  final String appBarTitle;
  final String routeName;
  final double portraitLeftValue;
  final double portraitRightValue;
  final double landscapeLeftvalue;
  final double landscapeRightValue;

  MyAppBar(
      {Key? key,
      required this.appBarTitle,
      required this.routeName,
      required this.portraitLeftValue,
      required this.portraitRightValue,
      required this.landscapeLeftvalue,
      required this.landscapeRightValue})
      : preferredSize = Size.fromHeight(70), super(key: key);

  @override
  State<MyAppBar> createState() => _MyAppBarState();

  @override
  final Size preferredSize;
}

class _MyAppBarState extends State<MyAppBar> {
  @override
  Widget build(BuildContext context) {
    bool isPortrait = false;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      isPortrait = true;
    }
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 6, 0, 0),
              child: (widget.routeName == "À PROPOS")
                  ? IconButton(
                      icon: const Icon(
                        Icons.arrow_back,
                        size: 40,
                      ),
                      onPressed: () {
                        Navigator.pop(context);
                      })
                  : IconButton(
                      icon: const Icon(
                        Icons.menu,
                        size: 40,
                      ),
                      onPressed: () {
                        Scaffold.of(context).openDrawer();
                      },
                      tooltip: MaterialLocalizations.of(context)
                          .openAppDrawerTooltip,
                    ));
        },
      ),
      toolbarHeight: 70.0,
      title: Row(
        children: <Widget>[
          SizedBox(
              width: (isPortrait)
                  ? widget.portraitLeftValue
                  : widget.landscapeLeftvalue),
          Center(
            child: Text(
              widget.appBarTitle,
              style: TextStyle(
                  fontSize: 14,
                  letterSpacing: 0.3,
                  fontFamily: "Inter",
                  fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
              width: (isPortrait)
                  ? widget.portraitRightValue
                  : widget.landscapeRightValue),
          // Padding(
          //   padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
          //   child: IconButton(
          //       icon: Icon(
          //         Icons.search,
          //         size: 40,
          //       ),
          //       onPressed: () {
          //         Widget child = SearchSreen(previousRoute: routeName);
          //         PersistentNavBarNavigator.pushNewScreen(context,
          //             screen: LayoutScreen(
          //               initialScreen: child,
          //             ),
          //             withNavBar: true);
          //       }),
          // ),
          (widget.routeName == "RECHERCHE CANTIQUES" || widget.routeName == "À PROPOS" || widget.routeName == "ECC CANTIQUES")
            ? SizedBox(width: 0)
            : IconButton(
                icon: Icon(Icons.search),
                onPressed: () {
                  Widget child = SearchSreen(previousRoute: widget.routeName);
                  PersistentNavBarNavigator.pushNewScreen(context, screen: child);
                }
              )
        ],
      ),
    );
  }
}
