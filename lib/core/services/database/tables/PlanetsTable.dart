import 'package:drift/drift.dart';

class Planets extends Table {
  TextColumn get id => text()();

  TextColumn get englishName => text().nullable()();

  RealColumn get density => real().nullable()();

  RealColumn get gravity => real().nullable()();

  TextColumn get discoveredBy => text().nullable()();

  TextColumn get discoveryDate => text().nullable()();

  TextColumn get image => text().nullable()();

  @override
  Set<Column<Object>> get primaryKey => {id};
}
