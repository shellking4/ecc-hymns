import 'package:ecchymns/models/french_hymn.model.dart';
import 'package:flutter/material.dart';
import '../database/database.dart';
import '../services/hymns.service.dart';
import '../utilities/app_bar.util.dart';
import 'hymn_item_view.dart';

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
    return Scaffold(
        backgroundColor: Colors.white,
        appBar: MyAppBar.getAppBar(context, setAppBarTitle(),
            FrenchHymnsScreen.id, 28.4, 40.5, 184.3, 196.1),
        body: Stack(
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

  ListView frenchHymn(data) {
    var hymnItemView = HymnItemView();
    return ListView.builder(
      itemCount: data.length,
      itemBuilder: (context, index) {
        return Card(
            child: hymnItemView.buildHymnItemView(context, data, index));
      },
    );
  }
}
