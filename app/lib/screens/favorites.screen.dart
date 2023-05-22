import 'package:ecchymns/utilities/base_scaffold.util.dart';
import 'package:ecchymns/utilities/favorite_menu_dialog.util.dart';
import 'package:flutter/material.dart';
import '../utilities/constants.util.dart';

class FavoritesScreen extends StatefulWidget {
  static const String id = 'favorites_screen';
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  String setAppBarTitle() {
    return "FAVORIS";
  }

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
                      padding: const EdgeInsetsDirectional.fromSTEB(0, 0, 0, 40),
                      child: SingleChildScrollView(
                        child: Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              children: [
                                Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 5),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(8, 40, 30, 2),
                                            child: Text(
                                              'MES FAVORIS',
                                              style: TextStyle(fontSize: 18, fontFamily: "Inter", color: Colors.black),
                                            ),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                                Divider(
                                  thickness: 0.3,
                                  indent: 40,
                                  endIndent: 50,
                                  color: FlutterFlowTheme.of(context).secondaryText,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            ...[for (var i = 1; i <= 10; i++) i].map((e) => FavoritesItem()).toList()
                          ],
                        ),
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

class FavoritesItem extends StatefulWidget {
  const FavoritesItem({super.key});

  @override
  State<FavoritesItem> createState() => _FavoritesItemState();
}

class _FavoritesItemState extends State<FavoritesItem> {
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Column(
        children: [
          Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(5, 10, 0, 2),
                      child: Text(
                        'CANTIQUES N°166',
                        style: TextStyle(fontSize: 12, fontFamily: "Inter", color: Colors.black),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(4, 4, 0, 5),
                      child: Text('TITRE DU CANTIQUE FAV.',
                          style: TextStyle(
                              fontSize: 9, fontFamily: "InterRegular", color: Color.fromARGB(255, 149, 147, 147))),
                    ),
                  ],
                ),
              ),
              GestureDetector(
                onTap: () {
                  showGeneralDialog(
                    barrierLabel: "favorite_menu",
                    barrierDismissible: true,
                    barrierColor: Colors.black.withOpacity(0.5),
                    transitionDuration: Duration(milliseconds: 400),
                    context: context,
                    pageBuilder: (context, anim1, anim2) {
                      return Align(
                        alignment: Alignment.bottomCenter,
                        child: FavoriteMenuDialog(),
                      );
                    },
                    transitionBuilder: (context, anim1, anim2, child) {
                      return SlideTransition(
                        position: Tween(begin: Offset(0, 1), end: Offset(0, 0)).animate(anim1),
                        child: child,
                      );
                    },
                  );
                },
                child: Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(175, 4, 0, 0),
                  child: Icon(
                    Icons.more_vert,
                    color: FlutterFlowTheme.of(context).secondaryText,
                    size: 30,
                  ),
                ),
              )
            ],
          ),
          Divider(
            thickness: 0.3,
            indent: 40,
            endIndent: 50,
            color: FlutterFlowTheme.of(context).secondaryText,
          ),
        ],
      ),
    );
  }
}
