import 'package:drift/drift.dart';

class Decks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get key => text()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  TextColumn get img => text()();
}

class DeckCards extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get key => text()();
  TextColumn get deck => text()();
  TextColumn get card => text()();
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
  IntColumn get pathType => integer()();
}

// user refered

class Answers extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get key => text()();
  TextColumn get card => text()();
  IntColumn get remember => integer()();
  IntColumn get time => integer()();
  IntColumn get day => integer()();
}

class Tasks extends Table {
  IntColumn get id => integer().autoIncrement()();
  TextColumn get key => text()();
  IntColumn get type => integer()(); // новая, повторить1 ...
  TextColumn get deck => text()();
  TextColumn get card => text()();
  IntColumn get createTime => integer()();
  IntColumn get done => integer()();
  IntColumn get doneTime => integer()();
}
