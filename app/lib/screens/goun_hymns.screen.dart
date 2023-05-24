import 'package:flutter/material.dart';
import '../database/database.dart';
import '../services/hymns.service.dart';
import '../utilities/base_scaffold.util.dart';
import '../utilities/hymn_item.util.dart';

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
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _gounHymns = HymnsService.getAllGounHymns();
    super.initState();
  }

  reloadHymns() {
    setState(() {
      _gounHymns = HymnsService.getAllGounHymns();
    });
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
      child: BaseScaffold(
          scaffoldBody: Stack(
        children: <Widget>[
          FutureBuilder<List<GounHymn>>(
              future: _gounHymns,
              builder: (BuildContext context, AsyncSnapshot<List<GounHymn>> snapshot) {
                if (snapshot.hasData) {
                  listOfGounnHymns = snapshot.data!;
                  return Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(2, 25, 2, 8),
                    child: ListView.builder(
                      itemCount: listOfGounnHymns!.length,
                      itemBuilder: (context, index) {
                        return HymnItem(
                          hymns: listOfGounnHymns,
                          hymnIndex: index,
                          reloadHymns: reloadHymns,
                        );
                      },
                    ),
                  );
                } else if (snapshot.hasError) {
                  return SizedBox();
                }
                return Center(
                  child: CircularProgressIndicator(),
                );
              })
        ],
      )),
    );
  }
}
