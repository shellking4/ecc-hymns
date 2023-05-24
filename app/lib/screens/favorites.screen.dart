import 'package:ecchymns/utilities/base_scaffold.util.dart';
import 'package:flutter/material.dart';
import '../services/hymns.service.dart';
import '../utilities/constants.util.dart';
import '../utilities/favorite.item.util.dart';

class FavoritesScreen extends StatefulWidget {
  static const String id = 'favorites_screen';
  const FavoritesScreen({super.key});

  @override
  State<FavoritesScreen> createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  Future<List<dynamic>>? _favoriteHymns;
  List<dynamic>? listOfFavoriteHymns;

  @override
  void initState() {
    _favoriteHymns = HymnsService.getFavoritesHymns();
    super.initState();
  }

  reloadFavorites() {
    setState(() {
      _favoriteHymns = HymnsService.getFavoritesHymns();
    });
  }

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
                                  endIndent: 24,
                                  color: FlutterFlowTheme.of(context).secondaryText,
                                ),
                              ],
                            ),
                            SizedBox(
                              height: 18,
                            ),
                            FutureBuilder<List<dynamic>>(
                                future: _favoriteHymns,
                                builder: (BuildContext context, AsyncSnapshot<List<dynamic>> snapshot) {
                                  if (snapshot.hasData) {
                                    listOfFavoriteHymns = snapshot.data!;
                                    return Column(
                                      children: listOfFavoriteHymns!
                                          .map((hymn) => FavoritesItem(
                                                hymn: hymn,
                                                favoriteHymns: listOfFavoriteHymns!,
                                                reloadFavorites: reloadFavorites,
                                              ))
                                          .toList(),
                                    );
                                  } else if (snapshot.hasError) {
                                    return SizedBox();
                                  }
                                  return SizedBox();
                                }),
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
