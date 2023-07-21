import 'package:ecchymns/database/database.dart';
import 'package:flutter/material.dart';
import '../services/hymns.service.dart';
import '../utilities/app_bar.util.dart';
import '../utilities/base_scaffold.util.dart';
import '../utilities/hymn_item.util.dart';

class FrenchHymnsScreen extends StatefulWidget {
  static const String id = 'french_hymns_screen';
  final String routeName = "CANTIQUES FRANÇAIS";
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

  reloadHymns() {
    setState(() {
      _frenchHymns = HymnsService.getAllFrenchHymns();
    });
  }

  get appBarTitle => widget.routeName;

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
      appBar: MyAppBar(
        appBarTitle: appBarTitle, 
        routeName: widget.routeName,
        portraitLeftValue: 20.2, 
        portraitRightValue: 45.4, 
        landscapeLeftvalue: 200.2, 
        landscapeRightValue: 197.1
      ),
      scaffoldBody: Stack(
      children: <Widget>[
        FutureBuilder<List<FrHymn>>(
            future: _frenchHymns,
            builder: (BuildContext context, AsyncSnapshot<List<FrHymn>> snapshot) {
              if (snapshot.hasData) {
                listOfFrenchHymns = snapshot.data!;
                return Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(2, 25, 2, 8),
                  child: ListView.builder(
                    itemCount: listOfFrenchHymns!.length,
                    itemBuilder: (context, index) {
                      return HymnItem(
                        hymns: listOfFrenchHymns,
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
    ));
  }
}
