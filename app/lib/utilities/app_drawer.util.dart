import 'package:ecchymns/pages/about.page.dart';
import 'package:ecchymns/pages/home.page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'constants.util.dart';
import 'functions.util.dart';

class AppDrawer extends StatefulWidget {
  const AppDrawer({super.key});

  @override
  State<AppDrawer> createState() => _AppDrawerState();
}

class _AppDrawerState extends State<AppDrawer> {
  final String title = "jawuntad";

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          DrawerHeader(
            decoration: BoxDecoration(color: eccWhiteTheme),
            child: Center(
                child: Text(
              "METATRONICX | Digital Agency",
              style: TextStyle(fontFamily: "Inter", fontSize: 16, fontWeight: FontWeight.bold),
            )),
          ),
          SizedBox(
            height: 40,
          ),
          getMenu("A Propos", screen: AboutPage(), icon: FontAwesomeIcons.circleInfo),
          getMenu("Partager", screen: HomePage(), icon: FontAwesomeIcons.shareFromSquare),
          getMenu("Quitter", screen: HomePage(), icon: FontAwesomeIcons.doorOpen),
          Expanded(
            child: Container(
              padding: EdgeInsets.all(16),
              alignment: Alignment.bottomRight,
              child: Image.asset(
                "images/log.png",
                width: 70,
                height: 70,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget getMenu(String title, {Widget? screen, bool? isActive, IconData? icon}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8.0),
      child: Row(
        children: [
          isActive == true
              ? Container(
                  height: 45,
                  width: 8.0,
                  color: Colors.red,
                  margin: EdgeInsets.only(left: 4, bottom: 16),
                )
              : Container(
                  width: 8.0,
                ),
          Expanded(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                    onTap: screen != null
                        ? () {
                            routeToScreenFromDrawer(context, screen);
                          }
                        : null,
                    title: Row(
                      children: [
                        Icon(
                          icon,
                          size: 16,
                          color: Colors.black,
                        ),
                        SizedBox(width: 20,),
                        Text(
                          title,
                          style: TextStyle(
                            fontSize: 14.0,
                            fontFamily: "Kiwi",
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                      ],
                    )),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 25),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
