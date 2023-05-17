import 'package:ecchymns/screens/home.screen.dart';
import 'package:flutter/material.dart';
import '../screens/search.screen.dart';
import 'custom_drawer.util.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({Key? key}) : super(key: key);

  static PreferredSizeWidget getAppBar(BuildContext context, String appBarTitle, String routeName,
      double portraitLeftValue, double portraitRightValue, double landscapeLeftvalue, double landscapeRightValue) {
    bool isPortrait = false;
    if (MediaQuery.of(context).orientation == Orientation.portrait) {
      isPortrait = true;
    }
    return AppBar(
      toolbarHeight: 70.0,
      title: Row(
        children: <Widget>[
          SizedBox(width: (isPortrait) ? portraitLeftValue : landscapeLeftvalue),
          Text(
            appBarTitle,
            style: TextStyle(fontSize: 12.2, letterSpacing: 0.3, fontFamily: "Kiwi"),
          ),
          SizedBox(width: (isPortrait) ? portraitRightValue : landscapeRightValue),
          (routeName != SearchSreen.id && routeName != HomeScreen.id)
              ? SizedBox(width: 0)
              : IconButton(
                  icon: Icon(Icons.search),
                  onPressed: () {
                    Widget child = SearchSreen(previousRoute: routeName);
                    Navigator.push(context, MaterialPageRoute(builder: (context) => CustomDrawer(child: child)));
                  })
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
