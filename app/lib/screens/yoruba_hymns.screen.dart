import 'package:ecchymns/models/yoruba_hymn.model.dart';
import 'package:flutter/material.dart';
import '../services/hymns.service.dart';
import '../utilities/app_bar.util.dart';
import '../utilities/base_scaffold.util.dart';
import 'hymn_item_view.dart';

class YorubaHymnsScreen extends StatefulWidget {
  static const String id = 'yoruba_hymns_screen';
  YorubaHymnsScreen({Key? key}) : super(key: key);

  @override
  _YorubaHymnsScreenState createState() => _YorubaHymnsScreenState();
}

class _YorubaHymnsScreenState extends State<YorubaHymnsScreen> {
  // ignore: unused_field
  Future<List<YorubaHymn>>? _yorubaHymns;
  List<YorubaHymn>? listOfyorubaHymns;

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
    return FutureBuilder<List<YorubaHymn>>(
        future: _yorubaHymns,
        builder: (BuildContext context, AsyncSnapshot<List<YorubaHymn>> snapshot) {
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

  ListView yorubaHymn(data) {
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
