import 'package:ecchymns/database/database.dart';
import 'package:ecchymns/services/hymns.service.dart';
import 'package:ecchymns/utilities/functions.util.dart';
import 'constants.util.dart';
import 'package:flutter/material.dart';

class HymnItem extends StatefulWidget {
  final hymnItem;
  final hymns;
  final hymnIndex;
  final Function reloadHymns;
  final bool searching;
  const HymnItem(
      {Key? key, this.hymns, this.hymnIndex, this.hymnItem, required this.reloadHymns, this.searching = false})
      : super(key: key);

  @override
  State<HymnItem> createState() => _HymnItemState();
}

class _HymnItemState extends State<HymnItem> {
  String setTitle(hymn) {
    return "CANTIQUE N°${hymn.number}";
  }

  setFavorite(hymn) {
    if (hymn is GounHymn) {
      HymnsService.setFavoriteGounHymn(hymn.number);
    } else if (hymn is FrHymn) {
      HymnsService.setFavoriteFrenchHymn(hymn.number);
    } else if (hymn is YrHymn) {
      HymnsService.setFavoriteYorubaHymn(hymn.number);
    } else {}
  }

  @override
  Widget build(BuildContext context) {
    var hymn;
    if (widget.hymnItem != null) {
      hymn = widget.hymnItem;
    } else {
      hymn = widget.hymns[widget.hymnIndex];
    }
    return GestureDetector(
      onTap: () {
        getHymnAndNavigate(hymn, context);
      },
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
        Padding(
          padding: EdgeInsetsDirectional.fromSTEB(18, 0, 18, 0),
          child: Container(
            width: 100,
            height: 40,
            decoration: BoxDecoration(
              color: eccBlue,
            ),
            child: Center(
              child: Text(
                setTitle(hymn),
                style: TextStyle(fontSize: 14, fontFamily: "Kiwi", color: eccWhiteTheme),
              ),
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
              padding: EdgeInsetsDirectional.fromSTEB(18, 10, 0, 18),
              child: Column(
                children: [
                  Center(
                    child: Text(
                      hymn.content,
                      style: TextStyle(fontSize: 14, fontFamily: "Kiwi", color: Colors.black),
                    ),
                  ),
                  widget.searching == true
                      ? SizedBox()
                      : Container(
                          padding: EdgeInsets.all(16),
                          alignment: Alignment.bottomRight,
                          child: IconButton(
                            onPressed: () {
                              setFavorite(hymn);
                              widget.reloadHymns();
                            },
                            icon: hymn.favorite == '1'
                                ? Icon(
                                    Icons.bookmark,
                                    color: Colors.green,
                                  )
                                : Icon(
                                    Icons.bookmark_add_outlined,
                                    color: Colors.green,
                                  ),
                          )),
                ],
              ),
            ),
          ),
        ),
      ]),
    );
  }
}
