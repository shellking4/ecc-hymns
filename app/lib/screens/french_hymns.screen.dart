import 'package:ecchymns/database/database.dart';
import 'package:ecchymns/models/french_hymn.model.dart';
import 'package:flutter/material.dart';
import '../services/hymns.service.dart';
import '../utilities/app_bar.util.dart';
import '../utilities/base_scaffold.util.dart';
import '../utilities/hymn_item.util.dart';

class FrenchHymnsScreen extends StatefulWidget {
  static const String id = 'french_hymns_screen';
  FrenchHymnsScreen({Key? key}) : super(key: key);

  @override
  _FrenchHymnsScreenState createState() => _FrenchHymnsScreenState();
}

class _FrenchHymnsScreenState extends State<FrenchHymnsScreen> {
  // ignore: unused_field
  Future<List<FrHymn>>? _frenchHymns;
  List<FrHymn>? listOfFrenchHymns;

  @override
  void initState() {
    _frenchHymns = HymnsService.getAllFrenchHymns();
    super.initState();
  }

  String setAppBarTitle() {
    return "CANTIQUES FRANÇAIS";
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        scaffoldBody: Stack(
          children: <Widget>[
            frenchHymnsData(),
          ],
        ));
  }

  FutureBuilder frenchHymnsData() {
    return FutureBuilder<List<FrHymn>>(
        future: _frenchHymns,
        builder: (BuildContext context, AsyncSnapshot<List<FrHymn>> snapshot) {
          if (snapshot.hasData) {
            listOfFrenchHymns = snapshot.data!;
            return frenchHymn(listOfFrenchHymns);
          } else if (snapshot.hasError) {
            return Text(
              "${snapshot.error}",
              style: TextStyle(fontFamily: "Kiwi", fontSize: 13.0),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }

  Widget frenchHymn(data) {
    var hymnItem = HymnItem();
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(2, 25, 2, 8),
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return hymnItem.buildHymnItemView(context, data, index);
        },
      ),
    );
  }
}
