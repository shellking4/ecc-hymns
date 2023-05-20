import 'package:ecchymns/screens/goun_hymn.screen.dart';
import 'package:ecchymns/utilities/functions.util.dart';
import 'package:flutter/material.dart';

class HomeMenuItem extends StatefulWidget {
  final String menuTitle;
  final Widget targetScreen;

  const HomeMenuItem({super.key, required this.menuTitle, required this.targetScreen});

  @override
  State<HomeMenuItem> createState() => _HomeMenuItemState();
}

class _HomeMenuItemState extends State<HomeMenuItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        routeToScreen(context, widget.targetScreen);
      },
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(18, 0, 18, 0),
          child: Container(
            width: 100,
            height: 5,
            decoration: BoxDecoration(
              color: Color(0xFF006AFF),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(15, 0, 15, 5),
          child: Card(
            clipBehavior: Clip.antiAliasWithSaveLayer,
            elevation: 0,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(2),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(18, 10, 0, 100),
              child: Text(
                widget.menuTitle,
                style: TextStyle(fontSize: 13, fontFamily: "Inter", color: Colors.black),
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
