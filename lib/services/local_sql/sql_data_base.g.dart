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

class DeckCard extends DataClass implements Insertable<DeckCard> {
  final int id;
  final String key;
  final String deck;
  final String card;
  DeckCard(
      {required this.id,
      required this.key,
      required this.deck,
      required this.card});
  factory DeckCard.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return DeckCard(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      key: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}key'])!,
      deck: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deck'])!,
      card: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}card'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['key'] = Variable<String>(key);
    map['deck'] = Variable<String>(deck);
    map['card'] = Variable<String>(card);
    return map;
  }

  DeckCardsCompanion toCompanion(bool nullToAbsent) {
    return DeckCardsCompanion(
      id: Value(id),
      key: Value(key),
      deck: Value(deck),
      card: Value(card),
    );
  }

  factory DeckCard.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return DeckCard(
      id: serializer.fromJson<int>(json['id']),
      key: serializer.fromJson<String>(json['key']),
      deck: serializer.fromJson<String>(json['deck']),
      card: serializer.fromJson<String>(json['card']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'key': serializer.toJson<String>(key),
      'deck': serializer.toJson<String>(deck),
      'card': serializer.toJson<String>(card),
    };
  }

  DeckCard copyWith({int? id, String? key, String? deck, String? card}) =>
      DeckCard(
        id: id ?? this.id,
        key: key ?? this.key,
        deck: deck ?? this.deck,
        card: card ?? this.card,
      );
  @override
  String toString() {
    return (StringBuffer('DeckCard(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('deck: $deck, ')
          ..write('card: $card')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, key, deck, card);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is DeckCard &&
          other.id == this.id &&
          other.key == this.key &&
          other.deck == this.deck &&
          other.card == this.card);
}

class DeckCardsCompanion extends UpdateCompanion<DeckCard> {
  final Value<int> id;
  final Value<String> key;
  final Value<String> deck;
  final Value<String> card;
  const DeckCardsCompanion({
    this.id = const Value.absent(),
    this.key = const Value.absent(),
    this.deck = const Value.absent(),
    this.card = const Value.absent(),
  });
  DeckCardsCompanion.insert({
    this.id = const Value.absent(),
    required String key,
    required String deck,
    required String card,
  })  : key = Value(key),
        deck = Value(deck),
        card = Value(card);
  static Insertable<DeckCard> custom({
    Expression<int>? id,
    Expression<String>? key,
    Expression<String>? deck,
    Expression<String>? card,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (key != null) 'key': key,
      if (deck != null) 'deck': deck,
      if (card != null) 'card': card,
    });
  }

  DeckCardsCompanion copyWith(
      {Value<int>? id,
      Value<String>? key,
      Value<String>? deck,
      Value<String>? card}) {
    return DeckCardsCompanion(
      id: id ?? this.id,
      key: key ?? this.key,
      deck: deck ?? this.deck,
      card: card ?? this.card,
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
    if (card.present) {
      map['card'] = Variable<String>(card.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('DeckCardsCompanion(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('deck: $deck, ')
          ..write('card: $card')
          ..write(')'))
        .toString();
  }
}

class $DeckCardsTable extends DeckCards
    with TableInfo<$DeckCardsTable, DeckCard> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $DeckCardsTable(this.attachedDatabase, [this._alias]);
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
  final VerificationMeta _cardMeta = const VerificationMeta('card');
  @override
  late final GeneratedColumn<String?> card = GeneratedColumn<String?>(
      'card', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, key, deck, card];
  @override
  String get aliasedName => _alias ?? 'deck_cards';
  @override
  String get actualTableName => 'deck_cards';
  @override
  VerificationContext validateIntegrity(Insertable<DeckCard> instance,
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
    if (data.containsKey('card')) {
      context.handle(
          _cardMeta, card.isAcceptableOrUnknown(data['card']!, _cardMeta));
    } else if (isInserting) {
      context.missing(_cardMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  DeckCard map(Map<String, dynamic> data, {String? tablePrefix}) {
    return DeckCard.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $DeckCardsTable createAlias(String alias) {
    return $DeckCardsTable(attachedDatabase, alias);
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
  final int pathType;
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
      pathType: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}path_type'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['key'] = Variable<String>(key);
    map['path'] = Variable<String>(path);
    map['path_type'] = Variable<int>(pathType);
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
      pathType: serializer.fromJson<int>(json['pathType']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'key': serializer.toJson<String>(key),
      'path': serializer.toJson<String>(path),
      'pathType': serializer.toJson<int>(pathType),
    };
  }

  Img copyWith({int? id, String? key, String? path, int? pathType}) => Img(
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
  final Value<int> pathType;
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
    required int pathType,
  })  : key = Value(key),
        path = Value(path),
        pathType = Value(pathType);
  static Insertable<Img> custom({
    Expression<int>? id,
    Expression<String>? key,
    Expression<String>? path,
    Expression<int>? pathType,
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
      Value<int>? pathType}) {
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
      map['path_type'] = Variable<int>(pathType.value);
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
  late final GeneratedColumn<int?> pathType = GeneratedColumn<int?>(
      'path_type', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
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

class Answer extends DataClass implements Insertable<Answer> {
  final int id;
  final String key;
  final String card;
  final int remember;
  final int time;
  final int day;
  Answer(
      {required this.id,
      required this.key,
      required this.card,
      required this.remember,
      required this.time,
      required this.day});
  factory Answer.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Answer(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      key: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}key'])!,
      card: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}card'])!,
      remember: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}remember'])!,
      time: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}time'])!,
      day: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}day'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['key'] = Variable<String>(key);
    map['card'] = Variable<String>(card);
    map['remember'] = Variable<int>(remember);
    map['time'] = Variable<int>(time);
    map['day'] = Variable<int>(day);
    return map;
  }

  AnswersCompanion toCompanion(bool nullToAbsent) {
    return AnswersCompanion(
      id: Value(id),
      key: Value(key),
      card: Value(card),
      remember: Value(remember),
      time: Value(time),
      day: Value(day),
    );
  }

  factory Answer.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Answer(
      id: serializer.fromJson<int>(json['id']),
      key: serializer.fromJson<String>(json['key']),
      card: serializer.fromJson<String>(json['card']),
      remember: serializer.fromJson<int>(json['remember']),
      time: serializer.fromJson<int>(json['time']),
      day: serializer.fromJson<int>(json['day']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'key': serializer.toJson<String>(key),
      'card': serializer.toJson<String>(card),
      'remember': serializer.toJson<int>(remember),
      'time': serializer.toJson<int>(time),
      'day': serializer.toJson<int>(day),
    };
  }

  Answer copyWith(
          {int? id,
          String? key,
          String? card,
          int? remember,
          int? time,
          int? day}) =>
      Answer(
        id: id ?? this.id,
        key: key ?? this.key,
        card: card ?? this.card,
        remember: remember ?? this.remember,
        time: time ?? this.time,
        day: day ?? this.day,
      );
  @override
  String toString() {
    return (StringBuffer('Answer(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('card: $card, ')
          ..write('remember: $remember, ')
          ..write('time: $time, ')
          ..write('day: $day')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(id, key, card, remember, time, day);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Answer &&
          other.id == this.id &&
          other.key == this.key &&
          other.card == this.card &&
          other.remember == this.remember &&
          other.time == this.time &&
          other.day == this.day);
}

class AnswersCompanion extends UpdateCompanion<Answer> {
  final Value<int> id;
  final Value<String> key;
  final Value<String> card;
  final Value<int> remember;
  final Value<int> time;
  final Value<int> day;
  const AnswersCompanion({
    this.id = const Value.absent(),
    this.key = const Value.absent(),
    this.card = const Value.absent(),
    this.remember = const Value.absent(),
    this.time = const Value.absent(),
    this.day = const Value.absent(),
  });
  AnswersCompanion.insert({
    this.id = const Value.absent(),
    required String key,
    required String card,
    required int remember,
    required int time,
    required int day,
  })  : key = Value(key),
        card = Value(card),
        remember = Value(remember),
        time = Value(time),
        day = Value(day);
  static Insertable<Answer> custom({
    Expression<int>? id,
    Expression<String>? key,
    Expression<String>? card,
    Expression<int>? remember,
    Expression<int>? time,
    Expression<int>? day,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (key != null) 'key': key,
      if (card != null) 'card': card,
      if (remember != null) 'remember': remember,
      if (time != null) 'time': time,
      if (day != null) 'day': day,
    });
  }

  AnswersCompanion copyWith(
      {Value<int>? id,
      Value<String>? key,
      Value<String>? card,
      Value<int>? remember,
      Value<int>? time,
      Value<int>? day}) {
    return AnswersCompanion(
      id: id ?? this.id,
      key: key ?? this.key,
      card: card ?? this.card,
      remember: remember ?? this.remember,
      time: time ?? this.time,
      day: day ?? this.day,
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
    if (card.present) {
      map['card'] = Variable<String>(card.value);
    }
    if (remember.present) {
      map['remember'] = Variable<int>(remember.value);
    }
    if (time.present) {
      map['time'] = Variable<int>(time.value);
    }
    if (day.present) {
      map['day'] = Variable<int>(day.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('AnswersCompanion(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('card: $card, ')
          ..write('remember: $remember, ')
          ..write('time: $time, ')
          ..write('day: $day')
          ..write(')'))
        .toString();
  }
}

class $AnswersTable extends Answers with TableInfo<$AnswersTable, Answer> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $AnswersTable(this.attachedDatabase, [this._alias]);
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
  final VerificationMeta _cardMeta = const VerificationMeta('card');
  @override
  late final GeneratedColumn<String?> card = GeneratedColumn<String?>(
      'card', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _rememberMeta = const VerificationMeta('remember');
  @override
  late final GeneratedColumn<int?> remember = GeneratedColumn<int?>(
      'remember', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _timeMeta = const VerificationMeta('time');
  @override
  late final GeneratedColumn<int?> time = GeneratedColumn<int?>(
      'time', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _dayMeta = const VerificationMeta('day');
  @override
  late final GeneratedColumn<int?> day = GeneratedColumn<int?>(
      'day', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns => [id, key, card, remember, time, day];
  @override
  String get aliasedName => _alias ?? 'answers';
  @override
  String get actualTableName => 'answers';
  @override
  VerificationContext validateIntegrity(Insertable<Answer> instance,
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
    if (data.containsKey('card')) {
      context.handle(
          _cardMeta, card.isAcceptableOrUnknown(data['card']!, _cardMeta));
    } else if (isInserting) {
      context.missing(_cardMeta);
    }
    if (data.containsKey('remember')) {
      context.handle(_rememberMeta,
          remember.isAcceptableOrUnknown(data['remember']!, _rememberMeta));
    } else if (isInserting) {
      context.missing(_rememberMeta);
    }
    if (data.containsKey('time')) {
      context.handle(
          _timeMeta, time.isAcceptableOrUnknown(data['time']!, _timeMeta));
    } else if (isInserting) {
      context.missing(_timeMeta);
    }
    if (data.containsKey('day')) {
      context.handle(
          _dayMeta, day.isAcceptableOrUnknown(data['day']!, _dayMeta));
    } else if (isInserting) {
      context.missing(_dayMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Answer map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Answer.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $AnswersTable createAlias(String alias) {
    return $AnswersTable(attachedDatabase, alias);
  }
}

class Task extends DataClass implements Insertable<Task> {
  final int id;
  final String key;
  final int type;
  final String deck;
  final String card;
  final int createTime;
  final int done;
  final int doneTime;
  Task(
      {required this.id,
      required this.key,
      required this.type,
      required this.deck,
      required this.card,
      required this.createTime,
      required this.done,
      required this.doneTime});
  factory Task.fromData(Map<String, dynamic> data, {String? prefix}) {
    final effectivePrefix = prefix ?? '';
    return Task(
      id: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}id'])!,
      key: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}key'])!,
      type: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}type'])!,
      deck: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}deck'])!,
      card: const StringType()
          .mapFromDatabaseResponse(data['${effectivePrefix}card'])!,
      createTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}create_time'])!,
      done: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}done'])!,
      doneTime: const IntType()
          .mapFromDatabaseResponse(data['${effectivePrefix}done_time'])!,
    );
  }
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['id'] = Variable<int>(id);
    map['key'] = Variable<String>(key);
    map['type'] = Variable<int>(type);
    map['deck'] = Variable<String>(deck);
    map['card'] = Variable<String>(card);
    map['create_time'] = Variable<int>(createTime);
    map['done'] = Variable<int>(done);
    map['done_time'] = Variable<int>(doneTime);
    return map;
  }

  TasksCompanion toCompanion(bool nullToAbsent) {
    return TasksCompanion(
      id: Value(id),
      key: Value(key),
      type: Value(type),
      deck: Value(deck),
      card: Value(card),
      createTime: Value(createTime),
      done: Value(done),
      doneTime: Value(doneTime),
    );
  }

  factory Task.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return Task(
      id: serializer.fromJson<int>(json['id']),
      key: serializer.fromJson<String>(json['key']),
      type: serializer.fromJson<int>(json['type']),
      deck: serializer.fromJson<String>(json['deck']),
      card: serializer.fromJson<String>(json['card']),
      createTime: serializer.fromJson<int>(json['createTime']),
      done: serializer.fromJson<int>(json['done']),
      doneTime: serializer.fromJson<int>(json['doneTime']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'key': serializer.toJson<String>(key),
      'type': serializer.toJson<int>(type),
      'deck': serializer.toJson<String>(deck),
      'card': serializer.toJson<String>(card),
      'createTime': serializer.toJson<int>(createTime),
      'done': serializer.toJson<int>(done),
      'doneTime': serializer.toJson<int>(doneTime),
    };
  }

  Task copyWith(
          {int? id,
          String? key,
          int? type,
          String? deck,
          String? card,
          int? createTime,
          int? done,
          int? doneTime}) =>
      Task(
        id: id ?? this.id,
        key: key ?? this.key,
        type: type ?? this.type,
        deck: deck ?? this.deck,
        card: card ?? this.card,
        createTime: createTime ?? this.createTime,
        done: done ?? this.done,
        doneTime: doneTime ?? this.doneTime,
      );
  @override
  String toString() {
    return (StringBuffer('Task(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('type: $type, ')
          ..write('deck: $deck, ')
          ..write('card: $card, ')
          ..write('createTime: $createTime, ')
          ..write('done: $done, ')
          ..write('doneTime: $doneTime')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode =>
      Object.hash(id, key, type, deck, card, createTime, done, doneTime);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is Task &&
          other.id == this.id &&
          other.key == this.key &&
          other.type == this.type &&
          other.deck == this.deck &&
          other.card == this.card &&
          other.createTime == this.createTime &&
          other.done == this.done &&
          other.doneTime == this.doneTime);
}

class TasksCompanion extends UpdateCompanion<Task> {
  final Value<int> id;
  final Value<String> key;
  final Value<int> type;
  final Value<String> deck;
  final Value<String> card;
  final Value<int> createTime;
  final Value<int> done;
  final Value<int> doneTime;
  const TasksCompanion({
    this.id = const Value.absent(),
    this.key = const Value.absent(),
    this.type = const Value.absent(),
    this.deck = const Value.absent(),
    this.card = const Value.absent(),
    this.createTime = const Value.absent(),
    this.done = const Value.absent(),
    this.doneTime = const Value.absent(),
  });
  TasksCompanion.insert({
    this.id = const Value.absent(),
    required String key,
    required int type,
    required String deck,
    required String card,
    required int createTime,
    required int done,
    required int doneTime,
  })  : key = Value(key),
        type = Value(type),
        deck = Value(deck),
        card = Value(card),
        createTime = Value(createTime),
        done = Value(done),
        doneTime = Value(doneTime);
  static Insertable<Task> custom({
    Expression<int>? id,
    Expression<String>? key,
    Expression<int>? type,
    Expression<String>? deck,
    Expression<String>? card,
    Expression<int>? createTime,
    Expression<int>? done,
    Expression<int>? doneTime,
  }) {
    return RawValuesInsertable({
      if (id != null) 'id': id,
      if (key != null) 'key': key,
      if (type != null) 'type': type,
      if (deck != null) 'deck': deck,
      if (card != null) 'card': card,
      if (createTime != null) 'create_time': createTime,
      if (done != null) 'done': done,
      if (doneTime != null) 'done_time': doneTime,
    });
  }

  TasksCompanion copyWith(
      {Value<int>? id,
      Value<String>? key,
      Value<int>? type,
      Value<String>? deck,
      Value<String>? card,
      Value<int>? createTime,
      Value<int>? done,
      Value<int>? doneTime}) {
    return TasksCompanion(
      id: id ?? this.id,
      key: key ?? this.key,
      type: type ?? this.type,
      deck: deck ?? this.deck,
      card: card ?? this.card,
      createTime: createTime ?? this.createTime,
      done: done ?? this.done,
      doneTime: doneTime ?? this.doneTime,
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
    if (type.present) {
      map['type'] = Variable<int>(type.value);
    }
    if (deck.present) {
      map['deck'] = Variable<String>(deck.value);
    }
    if (card.present) {
      map['card'] = Variable<String>(card.value);
    }
    if (createTime.present) {
      map['create_time'] = Variable<int>(createTime.value);
    }
    if (done.present) {
      map['done'] = Variable<int>(done.value);
    }
    if (doneTime.present) {
      map['done_time'] = Variable<int>(doneTime.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('TasksCompanion(')
          ..write('id: $id, ')
          ..write('key: $key, ')
          ..write('type: $type, ')
          ..write('deck: $deck, ')
          ..write('card: $card, ')
          ..write('createTime: $createTime, ')
          ..write('done: $done, ')
          ..write('doneTime: $doneTime')
          ..write(')'))
        .toString();
  }
}

class $TasksTable extends Tasks with TableInfo<$TasksTable, Task> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  $TasksTable(this.attachedDatabase, [this._alias]);
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
  final VerificationMeta _typeMeta = const VerificationMeta('type');
  @override
  late final GeneratedColumn<int?> type = GeneratedColumn<int?>(
      'type', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _deckMeta = const VerificationMeta('deck');
  @override
  late final GeneratedColumn<String?> deck = GeneratedColumn<String?>(
      'deck', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _cardMeta = const VerificationMeta('card');
  @override
  late final GeneratedColumn<String?> card = GeneratedColumn<String?>(
      'card', aliasedName, false,
      type: const StringType(), requiredDuringInsert: true);
  final VerificationMeta _createTimeMeta = const VerificationMeta('createTime');
  @override
  late final GeneratedColumn<int?> createTime = GeneratedColumn<int?>(
      'create_time', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _doneMeta = const VerificationMeta('done');
  @override
  late final GeneratedColumn<int?> done = GeneratedColumn<int?>(
      'done', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  final VerificationMeta _doneTimeMeta = const VerificationMeta('doneTime');
  @override
  late final GeneratedColumn<int?> doneTime = GeneratedColumn<int?>(
      'done_time', aliasedName, false,
      type: const IntType(), requiredDuringInsert: true);
  @override
  List<GeneratedColumn> get $columns =>
      [id, key, type, deck, card, createTime, done, doneTime];
  @override
  String get aliasedName => _alias ?? 'tasks';
  @override
  String get actualTableName => 'tasks';
  @override
  VerificationContext validateIntegrity(Insertable<Task> instance,
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
    if (data.containsKey('type')) {
      context.handle(
          _typeMeta, type.isAcceptableOrUnknown(data['type']!, _typeMeta));
    } else if (isInserting) {
      context.missing(_typeMeta);
    }
    if (data.containsKey('deck')) {
      context.handle(
          _deckMeta, deck.isAcceptableOrUnknown(data['deck']!, _deckMeta));
    } else if (isInserting) {
      context.missing(_deckMeta);
    }
    if (data.containsKey('card')) {
      context.handle(
          _cardMeta, card.isAcceptableOrUnknown(data['card']!, _cardMeta));
    } else if (isInserting) {
      context.missing(_cardMeta);
    }
    if (data.containsKey('create_time')) {
      context.handle(
          _createTimeMeta,
          createTime.isAcceptableOrUnknown(
              data['create_time']!, _createTimeMeta));
    } else if (isInserting) {
      context.missing(_createTimeMeta);
    }
    if (data.containsKey('done')) {
      context.handle(
          _doneMeta, done.isAcceptableOrUnknown(data['done']!, _doneMeta));
    } else if (isInserting) {
      context.missing(_doneMeta);
    }
    if (data.containsKey('done_time')) {
      context.handle(_doneTimeMeta,
          doneTime.isAcceptableOrUnknown(data['done_time']!, _doneTimeMeta));
    } else if (isInserting) {
      context.missing(_doneTimeMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Task map(Map<String, dynamic> data, {String? tablePrefix}) {
    return Task.fromData(data,
        prefix: tablePrefix != null ? '$tablePrefix.' : null);
  }

  @override
  $TasksTable createAlias(String alias) {
    return $TasksTable(attachedDatabase, alias);
  }
}

abstract class _$DictionaryDatabase extends GeneratedDatabase {
  _$DictionaryDatabase(QueryExecutor e)
      : super(SqlTypeSystem.defaultInstance, e);
  late final $DecksTable decks = $DecksTable(this);
  late final $DeckCardsTable deckCards = $DeckCardsTable(this);
  late final $FaktsTable fakts = $FaktsTable(this);
  late final $CardsTable cards = $CardsTable(this);
  late final $ImgsTable imgs = $ImgsTable(this);
  late final $AnswersTable answers = $AnswersTable(this);
  late final $TasksTable tasks = $TasksTable(this);
  late final DecksDao decksDao = DecksDao(this as DictionaryDatabase);
  late final CardsDao cardsDao = CardsDao(this as DictionaryDatabase);
  late final FaktsDao faktsDao = FaktsDao(this as DictionaryDatabase);
  late final ImgsDao imgsDao = ImgsDao(this as DictionaryDatabase);
  late final DeckCardsDao deckCardsDao =
      DeckCardsDao(this as DictionaryDatabase);
  late final AnswersDao answersDao = AnswersDao(this as DictionaryDatabase);
  late final TasksDao tasksDao = TasksDao(this as DictionaryDatabase);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [decks, deckCards, fakts, cards, imgs, answers, tasks];
}
