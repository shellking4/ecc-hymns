import 'package:ecchymns/pages/about.page.dart';
import 'package:ecchymns/pages/home.page.dart';
import 'package:flutter/material.dart';

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
      backgroundColor: eccBlue,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(top: 100, left: 50, bottom: 100),
            child: Image.asset(
              'images/ecc-logo.png',
              height: 80,
              width: 80,
            ),
          ),
          getMenu("A Propos", screen: AboutPage()),
          getMenu("Partager", screen: HomePage()),
          getMenu("Quitter", screen: HomePage()),
        ],
      ),
    );
  }

  Widget getMenu(String title, {Widget? screen, bool? isActive}) {
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
                  title: Text(
                    title,
                    style: TextStyle(
                      fontSize: 18.0,
                      color: Colors.white.withOpacity(0.75),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 25),
                  child: Divider(color: Colors.white.withOpacity(0.65)),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
