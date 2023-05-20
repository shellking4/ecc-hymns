import 'package:ecchymns/screens/french_hymns.screen.dart';
import 'package:ecchymns/screens/goun_hymns.screen.dart';
import 'package:ecchymns/screens/yoruba_hymns.screen.dart';
import 'package:ecchymns/utilities/base_scaffold.util.dart';
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
                    child: SingleChildScrollView(
                      child: Column(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
                                child: Row(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                                      child: Column(
                                        mainAxisSize: MainAxisSize.max,
                                        children: [
                                          Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(7, 10, 0, 2),
                                            child: Text('MES FAVORIS',
                                                style:
                                                    TextStyle(fontSize: 17, fontFamily: "Inter", color: Colors.black)),
                                          ),
                                        ],
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 0.4,
                            indent: 40,
                            endIndent: 50,
                            color: Colors.black12,
                          ),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                            child: Row(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.max,
                                    children: [
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(8, 10, 0, 2),
                                        child: Text(
                                          'CANTIQUES N°166',
                                          style: TextStyle(fontSize: 15, fontFamily: "Inter", color: Colors.black),
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsetsDirectional.fromSTEB(1, 2, 0, 5),
                                        child: Text(
                                          'TITRE DU CANTIQUES',
                                          style: TextStyle(fontSize: 13, fontFamily: "Inter", color: Colors.black),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(160, 10, 0, 0),
                                  child: Icon(
                                    Icons.more_vert,
                                    color: FlutterFlowTheme.of(context).secondaryText,
                                    size: 30,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Divider(
                                thickness: 0.3,
                                indent: 40,
                                endIndent: 50,
                                color: FlutterFlowTheme.of(context).secondaryText,
                              ),
                            ],
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(8, 10, 0, 2),
                                      child: Text(
                                        'CANTIQUES N°166',
                                        style: TextStyle(fontSize: 15, fontFamily: "Inter", color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(1, 2, 0, 5),
                                      child: Text('TITRE DU CANTIQUES',
                                          style: TextStyle(fontSize: 13, fontFamily: "Inter", color: Colors.black)),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(160, 10, 0, 0),
                                child: Icon(
                                  Icons.more_vert,
                                  color: FlutterFlowTheme.of(context).secondaryText,
                                  size: 30,
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
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(8, 10, 0, 2),
                                      child: Text(
                                        'CANTIQUES N°166',
                                        style: TextStyle(fontSize: 15, fontFamily: "Inter", color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(1, 2, 0, 5),
                                      child: Text(
                                        'TITRE DU CANTIQUES',
                                        style: TextStyle(fontSize: 12, fontFamily: "Inter", color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(160, 10, 0, 0),
                                child: Icon(
                                  Icons.more_vert,
                                  color: FlutterFlowTheme.of(context).secondaryText,
                                  size: 30,
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
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(8, 10, 0, 2),
                                      child: Text(
                                        'CANTIQUES N°166',
                                        style: TextStyle(fontSize: 15, fontFamily: "Inter", color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(1, 2, 0, 5),
                                      child: Text(
                                        'TITRE DU CANTIQUES',
                                        style: TextStyle(fontSize: 12, fontFamily: "Inter", color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(160, 10, 0, 0),
                                child: Icon(
                                  Icons.more_vert,
                                  color: FlutterFlowTheme.of(context).secondaryText,
                                  size: 30,
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
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(8, 10, 0, 2),
                                      child: Text(
                                        'CANTIQUES N°166',
                                        style: TextStyle(fontSize: 15, fontFamily: "Inter", color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(1, 2, 0, 5),
                                      child: Text(
                                        'TITRE DU CANTIQUES',
                                        style: TextStyle(fontSize: 15, fontFamily: "Inter", color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(160, 10, 0, 0),
                                child: Icon(
                                  Icons.more_vert,
                                  color: FlutterFlowTheme.of(context).secondaryText,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 0.3,
                            indent: 40,
                            endIndent: 50,
                            color: Colors.black12,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(8, 10, 0, 2),
                                      child: Text(
                                        'CANTIQUES N°166',
                                        style: TextStyle(fontSize: 15, fontFamily: "Inter", color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(1, 2, 0, 5),
                                      child: Text(
                                        'TITRE DU CANTIQUES',
                                        style: TextStyle(fontSize: 13, fontFamily: "Inter", color: Colors.black),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(160, 10, 0, 0),
                                child: Icon(
                                  Icons.more_vert,
                                  color: FlutterFlowTheme.of(context).secondaryText,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 0.3,
                            indent: 40,
                            endIndent: 50,
                            color: Colors.black12,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(8, 10, 0, 2),
                                      child: Text(
                                        'CANTIQUES N°166',
                                        style: TextStyle(fontSize: 13, fontFamily: "Inter", color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(1, 2, 0, 5),
                                      child: Text('TITRE DU CANTIQUES',
                                          style: TextStyle(fontSize: 13, fontFamily: "Inter", color: Colors.black)),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(160, 10, 0, 0),
                                child: Icon(
                                  Icons.more_vert,
                                  color: FlutterFlowTheme.of(context).secondaryText,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 0.3,
                            indent: 40,
                            endIndent: 50,
                            color: Colors.black12,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(8, 10, 0, 2),
                                      child: Text('CANTIQUES N°166',
                                          style: TextStyle(fontSize: 15, fontFamily: "Inter", color: Colors.black)),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(1, 2, 0, 5),
                                      child: Text('TITRE DU CANTIQUES',
                                          style: TextStyle(fontSize: 12, fontFamily: "Inter", color: Colors.black)),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(160, 10, 0, 0),
                                child: Icon(
                                  Icons.more_vert,
                                  color: FlutterFlowTheme.of(context).secondaryText,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 0.3,
                            indent: 40,
                            endIndent: 50,
                            color: Colors.black12,
                          ),
                          Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                                child: Column(
                                  mainAxisSize: MainAxisSize.max,
                                  children: [
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(8, 10, 0, 2),
                                      child: Text(
                                        'CANTIQUES N°166',
                                        style: TextStyle(fontSize: 15, fontFamily: "Inter", color: Colors.black),
                                      ),
                                    ),
                                    Padding(
                                      padding: EdgeInsetsDirectional.fromSTEB(1, 2, 0, 5),
                                      child: Text('TITRE DU CANTIQUES',
                                          style: TextStyle(fontSize: 13, fontFamily: "Inter", color: Colors.black)),
                                    ),
                                  ],
                                ),
                              ),
                              Padding(
                                padding: EdgeInsetsDirectional.fromSTEB(160, 10, 0, 0),
                                child: Icon(
                                  Icons.more_vert,
                                  color: FlutterFlowTheme.of(context).secondaryText,
                                  size: 30,
                                ),
                              ),
                            ],
                          ),
                          Divider(
                            thickness: 0.3,
                            indent: 40,
                            endIndent: 50,
                            color: FlutterFlowTheme.of(context).alternate,
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

class FavoritesItem extends StatefulWidget {
  const FavoritesItem({super.key});

  @override
  State<FavoritesItem> createState() => _FavoritesItemState();
}

class _FavoritesItemState extends State<FavoritesItem> {
  @override
  Widget build(BuildContext context) {
    return Column(
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
                    padding: EdgeInsetsDirectional.fromSTEB(8, 10, 0, 2),
                    child: Text(
                      'CANTIQUES N°166',
                      style: TextStyle(fontSize: 15, fontFamily: "Inter", color: Colors.black),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(1, 2, 0, 5),
                    child: Text('TITRE DU CANTIQUES',
                        style: TextStyle(fontSize: 13, fontFamily: "Inter", color: Colors.black)),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(160, 10, 0, 0),
              child: Icon(
                Icons.more_vert,
                color: FlutterFlowTheme.of(context).secondaryText,
                size: 30,
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
    );
  }
}

class FavoritesItemAlt extends StatefulWidget {
  const FavoritesItemAlt({super.key});

  @override
  State<FavoritesItemAlt> createState() => _FavoritesItemAltState();
}

class _FavoritesItemAltState extends State<FavoritesItemAlt> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.max,
      children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            children: [
              Padding(
                padding: EdgeInsetsDirectional.fromSTEB(30, 0, 0, 0),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding: EdgeInsetsDirectional.fromSTEB(7, 10, 0, 2),
                      child: Text('CANTIQUES N°166',
                          style: TextStyle(fontSize: 17, fontFamily: "Inter", color: Colors.black)),
                    ),
                    Text(
                      "Titre du cantique",
                      style: TextStyle(fontSize: 13, fontFamily: "Inter", color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Divider(
                      thickness: 0.3,
                      indent: 40,
                      endIndent: 50,
                      color: FlutterFlowTheme.of(context).secondaryText,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
