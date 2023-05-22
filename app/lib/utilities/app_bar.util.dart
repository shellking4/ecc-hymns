import 'package:ecchymns/screens/home.screen.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import '../screens/layout.screen.dart';
import '../screens/search.screen.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  static PreferredSizeWidget getAppBar(BuildContext context, String appBarTitle, String routeName,
      double portraitLeftValue, double portraitRightValue, double landscapeLeftvalue, double landscapeRightValue) {
    bool isPortrait = false;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      isPortrait = true;
    }
    return AppBar(
      leading: Builder(
        builder: (BuildContext context) {
          return Padding(
              padding: EdgeInsetsDirectional.fromSTEB(5, 6, 0, 0),
              child: IconButton(
                icon: const Icon(
                  Icons.menu,
                  size: 40,
                ),
                onPressed: () {
                  Scaffold.of(context).openDrawer();
                },
                tooltip: MaterialLocalizations.of(context).openAppDrawerTooltip,
              ));
        },
      ),
      toolbarHeight: 70.0,
      title: Row(
        children: <Widget>[
          SizedBox(width: (isPortrait) ? portraitLeftValue : landscapeLeftvalue),
          Center(
            child: Text(
              appBarTitle,
              style: TextStyle(fontSize: 14, letterSpacing: 0.3, fontFamily: "Inter", fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(width: (isPortrait) ? portraitRightValue : landscapeRightValue),
          Padding(
            padding: EdgeInsetsDirectional.fromSTEB(25, 0, 0, 0),
            child: IconButton(
                icon: Icon(
                  Icons.search,
                  size: 40,
                ),
                onPressed: () {
                  Widget child = SearchSreen(previousRoute: routeName);
                  PersistentNavBarNavigator.pushNewScreen(context,
                      screen: LayoutScreen(
                        initialScreen: child,
                      ),
                      withNavBar: true);
                }),
          )
          // (routeName != SearchSreen.id && routeName != HomeScreen.id)
          //     ? SizedBox(width: 0)
          //     : IconButton(
          //         icon: Icon(Icons.search),
          //         onPressed: () {
          //           Widget child = SearchSreen(previousRoute: routeName);
          //           PersistentNavBarNavigator.pushNewScreen(context, screen: child);
          //         })
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Placeholder();
  }
}
