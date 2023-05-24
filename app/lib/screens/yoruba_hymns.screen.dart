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
  Future<List<YrHymn>>? _yorubaHymns;
  List<YrHymn>? listOfYorubaHymns;

  @override
  void initState() {
    _yorubaHymns = HymnsService.getAllYorubaHymns();
    super.initState();
  }

  reloadHymns() {
    setState(() {
      _yorubaHymns = HymnsService.getAllYorubaHymns();
    });
  }

  String setAppBarTitle() {
    return "CANTIQUES YORUBA";
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        scaffoldBody: Stack(
      children: <Widget>[
        FutureBuilder<List<YrHymn>>(
            future: _yorubaHymns,
            builder: (BuildContext context, AsyncSnapshot<List<YrHymn>> snapshot) {
              if (snapshot.hasData) {
                listOfYorubaHymns = snapshot.data!;
                return Padding(
                  padding: EdgeInsetsDirectional.fromSTEB(2, 25, 2, 8),
                  child: ListView.builder(
                    itemCount: listOfYorubaHymns!.length,
                    itemBuilder: (context, index) {
                      return HymnItem(
                        hymns: listOfYorubaHymns,
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
