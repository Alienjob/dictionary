// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sql_data_base.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Deck extends DataClass implements Insertable<Deck> {
  final int id;
  final String key;
  final String title;
  final String description;
  final String img;
  Deck(
      {required this.id,
      required this.key,
      required this.title,
      required this.description,
      required this.img});
  factory Deck.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Deck(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      key: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}key'])!,
      title: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}title'])!,
      description: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}description'])!,
      img: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}img'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['key'] = Variable<String>(key);
    map['title'] = Variable<String>(title);
    map['description'] = Variable<String>(description);
    map['img'] = Variable<String>(img);
    return map;
  }

  DecksCompanion toCompanion(bool nullToAbsent) {
    return DecksCompanion(
      id: Value(id),
      key: Value(key),
      title: Value(title),
      description: Value(description),
      img: Value(img),
    );
  }

  factory Deck.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Deck(
      id: serializer.fromJson<int>(json['id']),
      key: serializer.fromJson<String>(json['key']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      img: serializer.fromJson<String>(json['img']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'key': serializer.toJson<String>(key),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'img': serializer.toJson<String>(img),
    };
  }

  Deck copyWith(
          {int? id,
          String? key,
          String? title,
          String? description,
          String? img}) =>
      Deck(
        id: id ?? this.id,
        key: key ?? this.key,
        title: title ?? this.title,
        description: description ?? this.description,
        img: img ?? this.img,
      );
  @override
  String toString() {
    return (StringBuffer('Deck(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('img: $img')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, key, title, description, img);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Deck &&
          other.id == this.id &&
          other.key == this.key &&
          other.title == this.title &&
          other.description == this.description &&
          other.img == this.img);
}

class DecksCompanion extends UpdateCompanion<Deck> {
  final Value<int> id;
  final Value<String> key;
  final Value<String> title;
  final Value<String> description;
  final Value<String> img;
  const DecksCompanion({
    this.id = const Value.absent(),
    this.key = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.img = const Value.absent(),
  });
  DecksCompanion.insert({
    this.id = const Value.absent(),
    required String key,
    required String title,
    required String description,
    required String img,
  })  : key = Value(key),
        title = Value(title),
        description = Value(description),
        img = Value(img);
  static Insertable<Deck> custom({
    Expression<int>? id,
    Expression<String>? key,
    Expression<String>? title,
    Expression<String>? description,
    Expression<String>? img,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (key != null) 'key': key,
      if (title != null) 'title': title,
      if (description != null) 'description': description,
      if (img != null) 'img': img,
    });
  }

  DecksCompanion copyWith(
      {Value<int>? id,
      Value<String>? key,
      Value<String>? title,
      Value<String>? description,
      Value<String>? img}) {
    return DecksCompanion(
      id: id ?? this.id,
      key: key ?? this.key,
      title: title ?? this.title,
      description: description ?? this.description,
      img: img ?? this.img,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (description.present) {
      map['description'] = Variable<String>(description.value);
    }
    if (img.present) {
      map['img'] = Variable<String>(img.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DecksCompanion(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('img: $img')
          ..write(')'))
        .toString();
  }
}

class $DecksTable extends Decks with TableInfo<$DecksTable, Deck> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DecksTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String?> key = GeneratedColumn<String?>(
      'key', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _titleMeta = const VerificationMeta('title');
  @override
  late final GeneratedColumn<String?> title = GeneratedColumn<String?>(
      'title', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  @override
  late final GeneratedColumn<String?> description = GeneratedColumn<String?>(
      'description', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _imgMeta = const VerificationMeta('img');
  @override
  late final GeneratedColumn<String?> img = GeneratedColumn<String?>(
      'img', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, key, title, description, img];
  @override
  String get aliasedName => _alias ?? 'decks';
  @override
  String get actualTableName => 'decks';
  @override
  VerificationContext validateIntegrity(Insertable<Deck> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('description')) {
      context.handle(
          _descriptionMeta,
          description.isAcceptableOrUnknown(
              data['description']!, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (data.containsKey('img')) {
      context.handle(
          _imgMeta, img.isAcceptableOrUnknown(data['img']!, _imgMeta));
    } else if (isInserting) {
      context.missing(_imgMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Deck map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Deck.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DecksTable createAlias(String alias) {
    return $DecksTable(attachedDatabase, alias);
  }
}

class DeckFakt extends DataClass implements Insertable<DeckFakt> {
  final int id;
  final String key;
  final String deck;
  final String fakt;
  DeckFakt(
      {required this.id,
      required this.key,
      required this.deck,
      required this.fakt});
  factory DeckFakt.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DeckFakt(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      key: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}key'])!,
      deck: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deck'])!,
      fakt: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}fakt'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['key'] = Variable<String>(key);
    map['deck'] = Variable<String>(deck);
    map['fakt'] = Variable<String>(fakt);
    return map;
  }

  DeckFaktsCompanion toCompanion(bool nullToAbsent) {
    return DeckFaktsCompanion(
      id: Value(id),
      key: Value(key),
      deck: Value(deck),
      fakt: Value(fakt),
    );
  }

  factory DeckFakt.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DeckFakt(
      id: serializer.fromJson<int>(json['id']),
      key: serializer.fromJson<String>(json['key']),
      deck: serializer.fromJson<String>(json['deck']),
      fakt: serializer.fromJson<String>(json['fakt']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'key': serializer.toJson<String>(key),
      'deck': serializer.toJson<String>(deck),
      'fakt': serializer.toJson<String>(fakt),
    };
  }

  DeckFakt copyWith({int? id, String? key, String? deck, String? fakt}) =>
      DeckFakt(
        id: id ?? this.id,
        key: key ?? this.key,
        deck: deck ?? this.deck,
        fakt: fakt ?? this.fakt,
      );
  @override
  String toString() {
    return (StringBuffer('DeckFakt(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('deck: $deck, ')
          ..write('fakt: $fakt')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, key, deck, fakt);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DeckFakt &&
          other.id == this.id &&
          other.key == this.key &&
          other.deck == this.deck &&
          other.fakt == this.fakt);
}

class DeckFaktsCompanion extends UpdateCompanion<DeckFakt> {
  final Value<int> id;
  final Value<String> key;
  final Value<String> deck;
  final Value<String> fakt;
  const DeckFaktsCompanion({
    this.id = const Value.absent(),
    this.key = const Value.absent(),
    this.deck = const Value.absent(),
    this.fakt = const Value.absent(),
  });
  DeckFaktsCompanion.insert({
    this.id = const Value.absent(),
    required String key,
    required String deck,
    required String fakt,
  })  : key = Value(key),
        deck = Value(deck),
        fakt = Value(fakt);
  static Insertable<DeckFakt> custom({
    Expression<int>? id,
    Expression<String>? key,
    Expression<String>? deck,
    Expression<String>? fakt,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (key != null) 'key': key,
      if (deck != null) 'deck': deck,
      if (fakt != null) 'fakt': fakt,
    });
  }

  DeckFaktsCompanion copyWith(
      {Value<int>? id,
      Value<String>? key,
      Value<String>? deck,
      Value<String>? fakt}) {
    return DeckFaktsCompanion(
      id: id ?? this.id,
      key: key ?? this.key,
      deck: deck ?? this.deck,
      fakt: fakt ?? this.fakt,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (deck.present) {
      map['deck'] = Variable<String>(deck.value);
    }
    if (fakt.present) {
      map['fakt'] = Variable<String>(fakt.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DeckFaktsCompanion(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('deck: $deck, ')
          ..write('fakt: $fakt')
          ..write(')'))
        .toString();
  }
}

class $DeckFaktsTable extends DeckFakts
    with TableInfo<$DeckFaktsTable, DeckFakt> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DeckFaktsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String?> key = GeneratedColumn<String?>(
      'key', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _deckMeta = const VerificationMeta('deck');
  @override
  late final GeneratedColumn<String?> deck = GeneratedColumn<String?>(
      'deck', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _faktMeta = const VerificationMeta('fakt');
  @override
  late final GeneratedColumn<String?> fakt = GeneratedColumn<String?>(
      'fakt', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, key, deck, fakt];
  @override
  String get aliasedName => _alias ?? 'deck_fakts';
  @override
  String get actualTableName => 'deck_fakts';
  @override
  VerificationContext validateIntegrity(Insertable<DeckFakt> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('deck')) {
      context.handle(
          _deckMeta, deck.isAcceptableOrUnknown(data['deck']!, _deckMeta));
    } else if (isInserting) {
      context.missing(_deckMeta);
    }
    if (data.containsKey('fakt')) {
      context.handle(
          _faktMeta, fakt.isAcceptableOrUnknown(data['fakt']!, _faktMeta));
    } else if (isInserting) {
      context.missing(_faktMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DeckFakt map(Map<String, dynamic> data, {String? tablePrefix}) {
    return DeckFakt.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DeckFaktsTable createAlias(String alias) {
    return $DeckFaktsTable(attachedDatabase, alias);
  }
}

class Fakt extends DataClass implements Insertable<Fakt> {
  final int id;
  final String key;
  final String category;
  final String data;
  final String additional;
  Fakt(
      {required this.id,
      required this.key,
      required this.category,
      required this.data,
      required this.additional});
  factory Fakt.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Fakt(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      key: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}key'])!,
      category: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}category'])!,
      data: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}data'])!,
      additional: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}additional'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['key'] = Variable<String>(key);
    map['category'] = Variable<String>(category);
    map['data'] = Variable<String>(data);
    map['additional'] = Variable<String>(additional);
    return map;
  }

  FaktsCompanion toCompanion(bool nullToAbsent) {
    return FaktsCompanion(
      id: Value(id),
      key: Value(key),
      category: Value(category),
      data: Value(data),
      additional: Value(additional),
    );
  }

  factory Fakt.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Fakt(
      id: serializer.fromJson<int>(json['id']),
      key: serializer.fromJson<String>(json['key']),
      category: serializer.fromJson<String>(json['category']),
      data: serializer.fromJson<String>(json['data']),
      additional: serializer.fromJson<String>(json['additional']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'key': serializer.toJson<String>(key),
      'category': serializer.toJson<String>(category),
      'data': serializer.toJson<String>(data),
      'additional': serializer.toJson<String>(additional),
    };
  }

  Fakt copyWith(
          {int? id,
          String? key,
          String? category,
          String? data,
          String? additional}) =>
      Fakt(
        id: id ?? this.id,
        key: key ?? this.key,
        category: category ?? this.category,
        data: data ?? this.data,
        additional: additional ?? this.additional,
      );
  @override
  String toString() {
    return (StringBuffer('Fakt(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('category: $category, ')
          ..write('data: $data, ')
          ..write('additional: $additional')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, key, category, data, additional);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Fakt &&
          other.id == this.id &&
          other.key == this.key &&
          other.category == this.category &&
          other.data == this.data &&
          other.additional == this.additional);
}

class FaktsCompanion extends UpdateCompanion<Fakt> {
  final Value<int> id;
  final Value<String> key;
  final Value<String> category;
  final Value<String> data;
  final Value<String> additional;
  const FaktsCompanion({
    this.id = const Value.absent(),
    this.key = const Value.absent(),
    this.category = const Value.absent(),
    this.data = const Value.absent(),
    this.additional = const Value.absent(),
  });
  FaktsCompanion.insert({
    this.id = const Value.absent(),
    required String key,
    required String category,
    required String data,
    required String additional,
  })  : key = Value(key),
        category = Value(category),
        data = Value(data),
        additional = Value(additional);
  static Insertable<Fakt> custom({
    Expression<int>? id,
    Expression<String>? key,
    Expression<String>? category,
    Expression<String>? data,
    Expression<String>? additional,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (key != null) 'key': key,
      if (category != null) 'category': category,
      if (data != null) 'data': data,
      if (additional != null) 'additional': additional,
    });
  }

  FaktsCompanion copyWith(
      {Value<int>? id,
      Value<String>? key,
      Value<String>? category,
      Value<String>? data,
      Value<String>? additional}) {
    return FaktsCompanion(
      id: id ?? this.id,
      key: key ?? this.key,
      category: category ?? this.category,
      data: data ?? this.data,
      additional: additional ?? this.additional,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (category.present) {
      map['category'] = Variable<String>(category.value);
    }
    if (data.present) {
      map['data'] = Variable<String>(data.value);
    }
    if (additional.present) {
      map['additional'] = Variable<String>(additional.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FaktsCompanion(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('category: $category, ')
          ..write('data: $data, ')
          ..write('additional: $additional')
          ..write(')'))
        .toString();
  }
}

class $FaktsTable extends Fakts with TableInfo<$FaktsTable, Fakt> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $FaktsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String?> key = GeneratedColumn<String?>(
      'key', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _categoryMeta = const VerificationMeta('category');
  @override
  late final GeneratedColumn<String?> category = GeneratedColumn<String?>(
      'category', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _dataMeta = const VerificationMeta('data');
  @override
  late final GeneratedColumn<String?> data = GeneratedColumn<String?>(
      'data', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _additionalMeta = const VerificationMeta('additional');
  @override
  late final GeneratedColumn<String?> additional = GeneratedColumn<String?>(
      'additional', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, key, category, data, additional];
  @override
  String get aliasedName => _alias ?? 'fakts';
  @override
  String get actualTableName => 'fakts';
  @override
  VerificationContext validateIntegrity(Insertable<Fakt> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('category')) {
      context.handle(_categoryMeta,
          category.isAcceptableOrUnknown(data['category']!, _categoryMeta));
    } else if (isInserting) {
      context.missing(_categoryMeta);
    }
    if (data.containsKey('data')) {
      context.handle(
          _dataMeta, this.data.isAcceptableOrUnknown(data['data']!, _dataMeta));
    } else if (isInserting) {
      context.missing(_dataMeta);
    }
    if (data.containsKey('additional')) {
      context.handle(
          _additionalMeta,
          additional.isAcceptableOrUnknown(
              data['additional']!, _additionalMeta));
    } else if (isInserting) {
      context.missing(_additionalMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Fakt map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Fakt.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $FaktsTable createAlias(String alias) {
    return $FaktsTable(attachedDatabase, alias);
  }
}

class Card extends DataClass implements Insertable<Card> {
  final int id;
  final String key;
  final String question;
  final String answer;
  final String img;
  Card(
      {required this.id,
      required this.key,
      required this.question,
      required this.answer,
      required this.img});
  factory Card.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Card(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      key: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}key'])!,
      question: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}question'])!,
      answer: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}answer'])!,
      img: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}img'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['key'] = Variable<String>(key);
    map['question'] = Variable<String>(question);
    map['answer'] = Variable<String>(answer);
    map['img'] = Variable<String>(img);
    return map;
  }

  CardsCompanion toCompanion(bool nullToAbsent) {
    return CardsCompanion(
      id: Value(id),
      key: Value(key),
      question: Value(question),
      answer: Value(answer),
      img: Value(img),
    );
  }

  factory Card.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Card(
      id: serializer.fromJson<int>(json['id']),
      key: serializer.fromJson<String>(json['key']),
      question: serializer.fromJson<String>(json['question']),
      answer: serializer.fromJson<String>(json['answer']),
      img: serializer.fromJson<String>(json['img']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'key': serializer.toJson<String>(key),
      'question': serializer.toJson<String>(question),
      'answer': serializer.toJson<String>(answer),
      'img': serializer.toJson<String>(img),
    };
  }

  Card copyWith(
          {int? id,
          String? key,
          String? question,
          String? answer,
          String? img}) =>
      Card(
        id: id ?? this.id,
        key: key ?? this.key,
        question: question ?? this.question,
        answer: answer ?? this.answer,
        img: img ?? this.img,
      );
  @override
  String toString() {
    return (StringBuffer('Card(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('question: $question, ')
          ..write('answer: $answer, ')
          ..write('img: $img')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, key, question, answer, img);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Card &&
          other.id == this.id &&
          other.key == this.key &&
          other.question == this.question &&
          other.answer == this.answer &&
          other.img == this.img);
}

class CardsCompanion extends UpdateCompanion<Card> {
  final Value<int> id;
  final Value<String> key;
  final Value<String> question;
  final Value<String> answer;
  final Value<String> img;
  const CardsCompanion({
    this.id = const Value.absent(),
    this.key = const Value.absent(),
    this.question = const Value.absent(),
    this.answer = const Value.absent(),
    this.img = const Value.absent(),
  });
  CardsCompanion.insert({
    this.id = const Value.absent(),
    required String key,
    required String question,
    required String answer,
    required String img,
  })  : key = Value(key),
        question = Value(question),
        answer = Value(answer),
        img = Value(img);
  static Insertable<Card> custom({
    Expression<int>? id,
    Expression<String>? key,
    Expression<String>? question,
    Expression<String>? answer,
    Expression<String>? img,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (key != null) 'key': key,
      if (question != null) 'question': question,
      if (answer != null) 'answer': answer,
      if (img != null) 'img': img,
    });
  }

  CardsCompanion copyWith(
      {Value<int>? id,
      Value<String>? key,
      Value<String>? question,
      Value<String>? answer,
      Value<String>? img}) {
    return CardsCompanion(
      id: id ?? this.id,
      key: key ?? this.key,
      question: question ?? this.question,
      answer: answer ?? this.answer,
      img: img ?? this.img,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (question.present) {
      map['question'] = Variable<String>(question.value);
    }
    if (answer.present) {
      map['answer'] = Variable<String>(answer.value);
    }
    if (img.present) {
      map['img'] = Variable<String>(img.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('CardsCompanion(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('question: $question, ')
          ..write('answer: $answer, ')
          ..write('img: $img')
          ..write(')'))
        .toString();
  }
}

class $CardsTable extends Cards with TableInfo<$CardsTable, Card> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $CardsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String?> key = GeneratedColumn<String?>(
      'key', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _questionMeta = const VerificationMeta('question');
  @override
  late final GeneratedColumn<String?> question = GeneratedColumn<String?>(
      'question', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _answerMeta = const VerificationMeta('answer');
  @override
  late final GeneratedColumn<String?> answer = GeneratedColumn<String?>(
      'answer', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _imgMeta = const VerificationMeta('img');
  @override
  late final GeneratedColumn<String?> img = GeneratedColumn<String?>(
      'img', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, key, question, answer, img];
  @override
  String get aliasedName => _alias ?? 'cards';
  @override
  String get actualTableName => 'cards';
  @override
  VerificationContext validateIntegrity(Insertable<Card> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('question')) {
      context.handle(_questionMeta,
          question.isAcceptableOrUnknown(data['question']!, _questionMeta));
    } else if (isInserting) {
      context.missing(_questionMeta);
    }
    if (data.containsKey('answer')) {
      context.handle(_answerMeta,
          answer.isAcceptableOrUnknown(data['answer']!, _answerMeta));
    } else if (isInserting) {
      context.missing(_answerMeta);
    }
    if (data.containsKey('img')) {
      context.handle(
          _imgMeta, img.isAcceptableOrUnknown(data['img']!, _imgMeta));
    } else if (isInserting) {
      context.missing(_imgMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Card map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Card.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $CardsTable createAlias(String alias) {
    return $CardsTable(attachedDatabase, alias);
  }
}

class Img extends DataClass implements Insertable<Img> {
  final int id;
  final String key;
  final String path;
  final String pathType;
  Img(
      {required this.id,
      required this.key,
      required this.path,
      required this.pathType});
  factory Img.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Img(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      key: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}key'])!,
      path: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}path'])!,
      pathType: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}path_type'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['key'] = Variable<String>(key);
    map['path'] = Variable<String>(path);
    map['path_type'] = Variable<String>(pathType);
    return map;
  }

  ImgsCompanion toCompanion(bool nullToAbsent) {
    return ImgsCompanion(
      id: Value(id),
      key: Value(key),
      path: Value(path),
      pathType: Value(pathType),
    );
  }

  factory Img.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Img(
      id: serializer.fromJson<int>(json['id']),
      key: serializer.fromJson<String>(json['key']),
      path: serializer.fromJson<String>(json['path']),
      pathType: serializer.fromJson<String>(json['pathType']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'key': serializer.toJson<String>(key),
      'path': serializer.toJson<String>(path),
      'pathType': serializer.toJson<String>(pathType),
    };
  }

  Img copyWith({int? id, String? key, String? path, String? pathType}) => Img(
        id: id ?? this.id,
        key: key ?? this.key,
        path: path ?? this.path,
        pathType: pathType ?? this.pathType,
      );
  @override
  String toString() {
    return (StringBuffer('Img(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('path: $path, ')
          ..write('pathType: $pathType')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, key, path, pathType);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Img &&
          other.id == this.id &&
          other.key == this.key &&
          other.path == this.path &&
          other.pathType == this.pathType);
}

class ImgsCompanion extends UpdateCompanion<Img> {
  final Value<int> id;
  final Value<String> key;
  final Value<String> path;
  final Value<String> pathType;
  const ImgsCompanion({
    this.id = const Value.absent(),
    this.key = const Value.absent(),
    this.path = const Value.absent(),
    this.pathType = const Value.absent(),
  });
  ImgsCompanion.insert({
    this.id = const Value.absent(),
    required String key,
    required String path,
    required String pathType,
  })  : key = Value(key),
        path = Value(path),
        pathType = Value(pathType);
  static Insertable<Img> custom({
    Expression<int>? id,
    Expression<String>? key,
    Expression<String>? path,
    Expression<String>? pathType,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (key != null) 'key': key,
      if (path != null) 'path': path,
      if (pathType != null) 'path_type': pathType,
    });
  }

  ImgsCompanion copyWith(
      {Value<int>? id,
      Value<String>? key,
      Value<String>? path,
      Value<String>? pathType}) {
    return ImgsCompanion(
      id: id ?? this.id,
      key: key ?? this.key,
      path: path ?? this.path,
      pathType: pathType ?? this.pathType,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (id.present) {
      map['id'] = Variable<int>(id.value);
    }
    if (key.present) {
      map['key'] = Variable<String>(key.value);
    }
    if (path.present) {
      map['path'] = Variable<String>(path.value);
    }
    if (pathType.present) {
      map['path_type'] = Variable<String>(pathType.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('ImgsCompanion(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('path: $path, ')
          ..write('pathType: $pathType')
          ..write(')'))
        .toString();
  }
}

class $ImgsTable extends Imgs with TableInfo<$ImgsTable, Img> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $ImgsTable(this.attachedDatabase, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  @override
  late final GeneratedColumn<int?> id = GeneratedColumn<int?>(
      'id', aliasedName, false,
      type: const IntType(),
      requiredDuringInsert: false,
      defaultConstraints: 'PRIMARY KEY AUTOINCREMENT');
  final VerificationMeta _keyMeta = const VerificationMeta('key');
  @override
  late final GeneratedColumn<String?> key = GeneratedColumn<String?>(
      'key', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _pathMeta = const VerificationMeta('path');
  @override
  late final GeneratedColumn<String?> path = GeneratedColumn<String?>(
      'path', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _pathTypeMeta = const VerificationMeta('pathType');
  @override
  late final GeneratedColumn<String?> pathType = GeneratedColumn<String?>(
      'path_type', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, key, path, pathType];
  @override
  String get aliasedName => _alias ?? 'imgs';
  @override
  String get actualTableName => 'imgs';
  @override
  VerificationContext validateIntegrity(Insertable<Img> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('id')) {
      context.handle(_idMeta, id.isAcceptableOrUnknown(data['id']!, _idMeta));
    }
    if (data.containsKey('key')) {
      context.handle(
          _keyMeta, key.isAcceptableOrUnknown(data['key']!, _keyMeta));
    } else if (isInserting) {
      context.missing(_keyMeta);
    }
    if (data.containsKey('path')) {
      context.handle(
          _pathMeta, path.isAcceptableOrUnknown(data['path']!, _pathMeta));
    } else if (isInserting) {
      context.missing(_pathMeta);
    }
    if (data.containsKey('path_type')) {
      context.handle(_pathTypeMeta,
          pathType.isAcceptableOrUnknown(data['path_type']!, _pathTypeMeta));
    } else if (isInserting) {
      context.missing(_pathTypeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Img map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Img.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $ImgsTable createAlias(String alias) {
    return $ImgsTable(attachedDatabase, alias);
  }
}

abstract class _$DictionaryDatabase extends GeneratedDatabase {
  _$DictionaryDatabase(QueryExecutor e)
      : super(SqlTypeSystem.defaultInstance, e);
  late final $DecksTable decks = $DecksTable(this);
  late final $DeckFaktsTable deckFakts = $DeckFaktsTable(this);
  late final $FaktsTable fakts = $FaktsTable(this);
  late final $CardsTable cards = $CardsTable(this);
  late final $ImgsTable imgs = $ImgsTable(this);
  late final DecksDao decksDao = DecksDao(this as DictionaryDatabase);
  late final CardsDao cardsDao = CardsDao(this as DictionaryDatabase);
  late final FaktsDao faktsDao = FaktsDao(this as DictionaryDatabase);
  late final ImgsDao imgsDao = ImgsDao(this as DictionaryDatabase);
  late final DeckFaktsDao deckFaktsDao =
      DeckFaktsDao(this as DictionaryDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [decks, deckFakts, fakts, cards, imgs];
}
