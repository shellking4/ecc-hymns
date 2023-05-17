import 'package:ecchymns/pages/french_hymns.page.dart';
import 'package:ecchymns/pages/goun_hymns.page.dart';
import 'package:ecchymns/pages/hymns_programs.page.dart';
import 'package:ecchymns/screens/home.screen.dart';
import 'package:ecchymns/utilities/base_scaffold.util.dart';
import 'package:ecchymns/utilities/constants.util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import "package:persistent_bottom_nav_bar/persistent_tab_view.dart";
import 'package:fluttertoast/fluttertoast.dart';
import '../pages/home.page.dart';
import '../utilities/app_bar.util.dart';
import '../utilities/app_drawer.util.dart';

class LayoutScreen extends StatefulWidget {
  static String id = 'layout_screen';
  LayoutScreen({Key? key, this.screenIndex = 0, this.initialScreen = const HomeScreen()}) : super(key: key);

  final int screenIndex;
  final Widget initialScreen;

  @override
  _LayoutScreenState createState() => _LayoutScreenState();
}

class _LayoutScreenState extends State<LayoutScreen> {
  double iconSize = 20;
  DateTime? currentBackPressTime;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  String setAppBarTitle() {
    return "Accueil";
  }

  @override
  Widget build(BuildContext context) {
    PersistentTabController controller = PersistentTabController(initialIndex: 0);
    return BaseScaffold(
      appBar: MyAppBar.getAppBar(context, setAppBarTitle(), LayoutScreen.id, 20.2, 45.4, 200.2, 197.1),
      scaffoldBody: WillPopScope(
        onWillPop: onWillPop,
        child: Stack(children: <Widget>[
          PersistentTabView(
            context,
            controller: controller,
            screens: buildScreens(),
            items: navBarsItems(context),
            confineInSafeArea: true,
            backgroundColor: Colors.white,
            handleAndroidBackButtonPress: true,
            resizeToAvoidBottomInset: true,
            stateManagement: true,
            navBarHeight: 100,
            hideNavigationBarWhenKeyboardShows: true,
            decoration: NavBarDecoration(
              borderRadius: BorderRadius.zero,
              colorBehindNavBar: Colors.white,
            ),
            popAllScreensOnTapOfSelectedTab: true,
            popActionScreens: PopActionScreensType.all,
            itemAnimationProperties: ItemAnimationProperties(
              // Navigation Bar's items animation properties.
              duration: Duration(milliseconds: 300),
              curve: Curves.ease,
            ),
            screenTransitionAnimation: ScreenTransitionAnimation(
              // Screen transition animation on change of selected tab.
              animateTabTransition: true,
              curve: Curves.ease,
              duration: Duration(milliseconds: 250),
            ),
            navBarStyle: NavBarStyle.style15,
          )
        ]),
      ),
    );
  }

  // ignore: missing_return

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    String exitWarning = "Cliquer encore fois pour quitter l'application";
    if (currentBackPressTime == null || now.difference(currentBackPressTime!) > Duration(seconds: 2)) {
      currentBackPressTime = now;
      Fluttertoast.showToast(msg: exitWarning);
      return Future.value(true);
    }
    SystemNavigator.pop();
    return Future.value(true);
  }
}
