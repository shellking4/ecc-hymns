import 'package:ecchymns/utilities/base_scaffold.util.dart';
import 'package:flutter/material.dart';
import 'package:easy_rich_text/easy_rich_text.dart';
import '../models/hymns_program.model.dart';
import '../services/hymns.service.dart';
import '../utilities/app_bar.util.dart';

class HymnsProgramScreen extends StatefulWidget {
  static const String id = 'hymns_program_screen';
  @override
  _HymnsProgramScreenState createState() => _HymnsProgramScreenState();
}

class _HymnsProgramScreenState extends State<HymnsProgramScreen> {
  List<HymnsProgram>? listOfHymnPrograms;
  Future<List<HymnsProgram>>? _hymnsPrograms;
  Color? color;
  int selectedIndex = -1;
  String first = "1st";
  String second = "2nd";
  String third = "3rd";
  String fourth = "4th";
  String fifth = "5th";
  String sixth = "6th";
  String seventh = "7th";
  // ignore: unused_field
  final GlobalKey<ScaffoldState> _key = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    _hymnsPrograms = HymnsService.getAllHymnsProgram();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BaseScaffold(
        scaffoldBody: FutureBuilder<List<HymnsProgram>>(
            future: _hymnsPrograms,
            builder: (BuildContext context, AsyncSnapshot<List<HymnsProgram>> snapshot) {
              if (snapshot.hasData) {
                listOfHymnPrograms = snapshot.data!;
                return SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Theme(
                        data: Theme.of(context).copyWith(
                          dividerColor: Color(0xFF29434e),
                        ),
                        child: DataTable(
                          showBottomBorder: true,
                          showCheckboxColumn: false,
                          dividerThickness: 2.0,
                          horizontalMargin: 10,
                          columns: [
                            DataColumn(
                                label: Text(
                              "DATES",
                              textAlign: TextAlign.center,
                              style: TextStyle(fontFamily: "Kiwi", fontSize: 15.0, fontWeight: FontWeight.bold),
                            )),
                            DataColumn(
                              label: EasyRichText(
                                first,
                                patternList: [
                                  EasyRichTextPattern(
                                    targetString: 'st',
                                    superScript: true,
                                    stringBeforeTarget: '1',
                                    matchWordBoundaries: false,
                                    style: TextStyle(
                                        fontFamily: "Kiwi",
                                        fontSize: 15.0,
                                        color: Colors.black,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            DataColumn(
                              label: EasyRichText(
                                second,
                                patternList: [
                                  EasyRichTextPattern(
                                    targetString: 'nd',
                                    superScript: true,
                                    stringBeforeTarget: '2',
                                    matchWordBoundaries: false,
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontFamily: "Kiwi",
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                            DataColumn(
                                label: EasyRichText(
                              third,
                              patternList: [
                                EasyRichTextPattern(
                                  targetString: 'rd',
                                  superScript: true,
                                  stringBeforeTarget: '3',
                                  matchWordBoundaries: false,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Kiwi",
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                            DataColumn(
                                label: EasyRichText(
                              fourth,
                              patternList: [
                                EasyRichTextPattern(
                                  targetString: 'th',
                                  superScript: true,
                                  stringBeforeTarget: '4',
                                  matchWordBoundaries: false,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Kiwi",
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                            DataColumn(
                                label: EasyRichText(
                              fifth,
                              patternList: [
                                EasyRichTextPattern(
                                  targetString: 'th',
                                  superScript: true,
                                  stringBeforeTarget: '5',
                                  matchWordBoundaries: false,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Kiwi",
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                            DataColumn(
                                label: EasyRichText(
                              sixth,
                              patternList: [
                                EasyRichTextPattern(
                                  targetString: 'th',
                                  superScript: true,
                                  stringBeforeTarget: '6',
                                  matchWordBoundaries: false,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Kiwi",
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            )),
                            DataColumn(
                                label: EasyRichText(
                              seventh,
                              patternList: [
                                EasyRichTextPattern(
                                  targetString: 'th',
                                  superScript: true,
                                  stringBeforeTarget: '7',
                                  matchWordBoundaries: false,
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontFamily: "Kiwi",
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                              ],
                            ))
                          ],
                          rows: listOfHymnPrograms != null
                              ? listOfHymnPrograms!.map((hymnProgram) {
                                  var index = listOfHymnPrograms!.indexOf(hymnProgram);
                                  return DataRow(
                                      color: MaterialStateProperty.resolveWith<Color>((Set<MaterialState> states) {
                                        if (states.contains(MaterialState.selected)) {
                                          return Theme.of(context).colorScheme.primary.withOpacity(0.3);
                                        }
                                        return Colors.white;
                                      }),
                                      cells: [
                                        DataCell(Text(
                                          hymnProgram.attributes?.date == null
                                              ? ""
                                              : hymnProgram.attributes?.date as String,
                                          style: TextStyle(
                                              fontFamily: "Kiwi", fontSize: 14.0, fontWeight: FontWeight.bold),
                                        )),
                                        DataCell(Text(
                                          hymnProgram.attributes?.firstHymn == null
                                              ? ""
                                              : hymnProgram.attributes?.firstHymn as String,
                                          textAlign: TextAlign.center,
                                          style: TextStyle(
                                            fontFamily: "Kiwi",
                                            fontSize: 12.0,
                                          ),
                                        )),
                                        DataCell(Text(
                                          hymnProgram.attributes?.secondHymn == null
                                              ? ""
                                              : hymnProgram.attributes?.secondHymn as String,
                                          style: TextStyle(
                                            fontFamily: "Kiwi",
                                            fontSize: 12.0,
                                          ),
                                        )),
                                        DataCell(Text(
                                          hymnProgram.attributes?.thirdHymn == null
                                              ? ""
                                              : hymnProgram.attributes?.thirdHymn as String,
                                          style: TextStyle(
                                            fontFamily: "Kiwi",
                                            fontSize: 12.0,
                                          ),
                                        )),
                                        DataCell(Text(
                                          hymnProgram.attributes?.fourthHymn == null
                                              ? ""
                                              : hymnProgram.attributes?.fourthHymn as String,
                                          style: TextStyle(
                                            fontFamily: "Kiwi",
                                            fontSize: 12.0,
                                          ),
                                        )),
                                        DataCell(Text(
                                          hymnProgram.attributes?.fifthHymn == null
                                              ? ""
                                              : hymnProgram.attributes?.fifthHymn as String,
                                          style: TextStyle(
                                            fontFamily: "Kiwi",
                                            fontSize: 12.0,
                                          ),
                                        )),
                                        DataCell(Text(
                                          hymnProgram.attributes?.sixthHymn == null
                                              ? ""
                                              : hymnProgram.attributes?.sixthHymn as String,
                                          style: TextStyle(
                                            fontFamily: "Kiwi",
                                            fontSize: 12.0,
                                          ),
                                        )),
                                        DataCell(Text(
                                          hymnProgram.attributes?.seventhHymn == null
                                              ? ""
                                              : hymnProgram.attributes?.seventhHymn as String,
                                          style: TextStyle(
                                            fontFamily: "Kiwi",
                                            fontSize: 12.0,
                                          ),
                                        )),
                                      ],
                                      selected: index == selectedIndex,
                                      onSelectChanged: (val) {
                                        setState(() {
                                          selectedIndex = index;
                                        });
                                      });
                                }).toList()
                              : [],
                        ),
                      )),
                );
              } else if (snapshot.hasError) {
                return Center(
                  child: Text("Veuillez patienter pendant que nous mettons les choses en place",
                      style: TextStyle(fontFamily: "Kiwi", fontSize: 13.0)),
                );
              }
              return Center(
                child: CircularProgressIndicator(),
              );
            }));
  }

  String setAppBarTitle() {
    return "PROGRAMME CANTIQUES";
  }
}
