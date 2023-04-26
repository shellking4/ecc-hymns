import 'package:flutter/material.dart';
import '../database/database.dart';
import '../models/hymns_program.model.dart';
import '../services/hymns.service.dart';
import '../utilities/app_bar.util.dart';
import 'hymn_item_view.dart';

class GounHymnsScreen extends StatefulWidget {
  static const String id = 'goun_hymns_screen';
  GounHymnsScreen({Key? key}) : super(key: key);

  @override
  _GounHymnsScreenState createState() => _GounHymnsScreenState();
}

class _GounHymnsScreenState extends State<GounHymnsScreen> {
  // ignore: unused_field
  Future<List<GounHymn>>? _gounHymns;
  List<GounHymn>? listOfGounnHymns;
  List<HymnsProgram>? progs;
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _gounHymns = HymnsService.getAllGounHymns();
    super.initState();
  }

  String setAppBarTitle() {
    return "CANTIQUES GOUN";
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
      child: Scaffold(
          key: _key,
          backgroundColor: Colors.white,
          appBar: MyAppBar.getAppBar(context, setAppBarTitle(),
              GounHymnsScreen.id, 48.2, 45.4, 200.2, 197.1),
          body: Stack(
            children: <Widget>[gounHymnsData()],
          )),
    );
  }

  FutureBuilder gounHymnsData() {
    return FutureBuilder<List<GounHymn>>(
        future: _gounHymns,
        builder:
            (BuildContext context, AsyncSnapshot<List<GounHymn>> snapshot) {
          if (snapshot.hasData) {
            listOfGounnHymns = snapshot.data!;
            return gounHymn(listOfGounnHymns);
          } else if (snapshot.hasError) {
            return Center(
              child: Text("Veuillez patienter pendant que nous mettons les choses en place",
                  style: TextStyle(fontFamily: "Kiwi", fontSize: 13.0)),
            );
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }

  ListView gounHymn(data) {
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
