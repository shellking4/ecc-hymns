import 'package:ecchymns/database/database.dart';
import 'package:flutter/material.dart';
import '../services/hymns.service.dart';
import '../utilities/base_scaffold.util.dart';
import '../utilities/hymn_item.util.dart';

class YorubaHymnsScreen extends StatefulWidget {
  static const String id = 'yoruba_hymns_screen';
  YorubaHymnsScreen({Key? key}) : super(key: key);

  @override
  _YorubaHymnsScreenState createState() => _YorubaHymnsScreenState();
}

class _YorubaHymnsScreenState extends State<YorubaHymnsScreen> {
  // ignore: unused_field
  Future<List<YrHymn>>? _yorubaHymns;
  List<YrHymn>? listOfyorubaHymns;

  @override
  void initState() {
    _yorubaHymns = HymnsService.getAllYorubaHymns();
    super.initState();
  }

  String setAppBarTitle() {
    return "CANTIQUES YORUBA";
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        scaffoldBody: Stack(
          children: <Widget>[
            yorubaHymnsData(),
          ],
        ));
  }

  FutureBuilder yorubaHymnsData() {
    return FutureBuilder<List<YrHymn>>(
        future: _yorubaHymns,
        builder: (BuildContext context, AsyncSnapshot<List<YrHymn>> snapshot) {
          if (snapshot.hasData) {
            listOfyorubaHymns = snapshot.data!;
            return yorubaHymn(listOfyorubaHymns);
          } else if (snapshot.hasError) {
            return Text("${snapshot.error}");
          }
          return Center(
            child: CircularProgressIndicator(),
          );
        });
  }

  Widget yorubaHymn(data) {
    var hymnItemView = HymnItem();
    return Padding(
      padding: EdgeInsetsDirectional.fromSTEB(2, 25, 2, 8),
      child: ListView.builder(
        itemCount: data.length,
        itemBuilder: (context, index) {
          return hymnItemView.buildHymnItemView(context, data, index);
        },
      ),
    );
  }
}
