import 'dart:io';
import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path_provider/path_provider.dart';
import 'package:path/path.dart' as p;
import 'package:flutter/services.dart' show rootBundle;

part 'database.g.dart';


LazyDatabase _openConnection() {
  return LazyDatabase(() async {
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'app.db'));
    if (!await file.exists()) {
      // Extract the pre-populated database file from assets
      final blob = await rootBundle.load('assets/hymnsData.db');
      final blobBuffer = blob.buffer;
      await file.writeAsBytes(blobBuffer.asUint8List(blob.offsetInBytes, blob.lengthInBytes));
    }
    return NativeDatabase.createInBackground(file);
  });
}


@DriftDatabase(
  include: {'tables.drift'},
)
class HymnsDb extends _$HymnsDb {
  HymnsDb() : super(_openConnection());

  @override
  int get schemaVersion => 2;
}
