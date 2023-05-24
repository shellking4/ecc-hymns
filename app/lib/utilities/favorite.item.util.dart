import 'package:ecchymns/database/database.dart';
import 'package:ecchymns/services/hymns.service.dart';
import 'package:flutter/material.dart';
import 'constants.util.dart';
import 'favorite_menu_dialog.util.dart';
import 'functions.util.dart';

class FavoritesItem extends StatefulWidget {
  final dynamic hymn;
  final List<dynamic> favoriteHymns;
  final Function reloadFavorites;

  const FavoritesItem({super.key, this.hymn, required this.reloadFavorites, required this.favoriteHymns});

  @override
  State<FavoritesItem> createState() => _FavoritesItemState();
}

class _FavoritesItemState extends State<FavoritesItem> {
  removeFavorite(hymn) async {
    if (hymn is GounHymn) {
      await HymnsService.removeFavoriteGounHymn(widget.hymn.number);
    } else if (hymn is FrHymn) {
      await HymnsService.removeFavoriteFrenchHymn(widget.hymn.number);
    } else if (hymn is YrHymn) {
      await HymnsService.removeFavoriteYorubaHymn(widget.hymn.number);
    }
    return;
  }

  removeHymnFromFavorite() async {
    await removeFavorite(widget.hymn);
    widget.reloadFavorites();
    return;
  }

  removeAllFavoriteHymns() async {
    for (dynamic hymn in widget.favoriteHymns) {
      await removeFavorite(hymn);
    }
    widget.reloadFavorites();
  }

  setLanguageIndicator(hymn) {
    if (hymn is GounHymn) {
      return "Gou.";
    } else if (hymn is FrHymn) {
      return "Fran.";
    } else if (hymn is YrHymn) {
      return "Yoru.";
    } else {
      return "";
    }
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        getHymnAndNavigate(widget.hymn, context);
      },
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
                        'CANTIQUES N°${widget.hymn.number} (${setLanguageIndicator(widget.hymn)})',
                        style: TextStyle(fontSize: 12, fontFamily: "Inter", color: Colors.black),
                      ),
                    ),
                    // Padding(
                    //   padding: EdgeInsetsDirectional.fromSTEB(4, 4, 0, 5),
                    //   child: Text("${widget.hymn.title}".trim(),
                    //     textAlign: TextAlign.justify,
                    //       style: TextStyle(
                    //           fontSize: 9, fontFamily: "InterRegular", color: Color.fromARGB(255, 149, 147, 147))),
                    // ),
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
                        child: FavoriteMenuDialog(
                          removeFavorite: removeHymnFromFavorite,
                          removeAllFavorites: removeAllFavoriteHymns,
                        ),
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
            endIndent: 24,
            color: FlutterFlowTheme.of(context).secondaryText,
          ),
        ],
      ),
    );
  }
}
