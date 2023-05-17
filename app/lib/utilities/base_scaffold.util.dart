import 'package:flutter/material.dart';

import 'app_drawer.util.dart';
import 'constants.util.dart';

class BaseScaffold extends StatefulWidget {
  final Widget scaffoldBody;
  final bool showAppBar;
  final PreferredSizeWidget? appBar;
  const BaseScaffold({
    Key? key,
    required this.scaffoldBody,
    this.appBar,
    this.showAppBar = true,
  }) : super(key: key);

  @override
  State<BaseScaffold> createState() => _BaseScaffoldState();
}

class _BaseScaffoldState extends State<BaseScaffold> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: eccWhiteTheme,
        appBar: widget.appBar,
        drawer: AppDrawer(),
        body: Stack(
          children: [
            widget.scaffoldBody,
          ],
        ));
  }
}
