import 'package:drift/drift.dart';

class Decks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get key => text()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  TextColumn get img => text()();
}

class DeckFakts extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get key => text()();
  TextColumn get deck => text()();
  TextColumn get fakt => text()();
}

class Fakts extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get key => text()();
  TextColumn get category => text()(); // "word" / "town" / ...
  TextColumn get data => text()(); // "cat"
  TextColumn get additional => text()(); // "kæt"
}

class Cards extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get key => text()();
  TextColumn get question => text()();
  TextColumn get answer => text()();
  TextColumn get img => text()();
}

class Imgs extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get key => text()();
  TextColumn get path => text()();
  TextColumn get pathType => text()();
}
