// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'database.dart';

// ignore_for_file: type=lint
class GounHymns extends Table
    with TableInfo<GounHymns, GounHymn>, VirtualTableInfo<GounHymns, GounHymn> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  GounHymns(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  late final GeneratedColumn<String> number = GeneratedColumn<String>(
      'number', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _favoriteMeta =
      const VerificationMeta('favorite');
  late final GeneratedColumn<String> favorite = GeneratedColumn<String>(
      'favorite', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [number, title, content, favorite];
  @override
  String get aliasedName => _alias ?? 'gounHymns';
  @override
  String get actualTableName => 'gounHymns';
  @override
  VerificationContext validateIntegrity(Insertable<GounHymn> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('favorite')) {
      context.handle(_favoriteMeta,
          favorite.isAcceptableOrUnknown(data['favorite']!, _favoriteMeta));
    } else if (isInserting) {
      context.missing(_favoriteMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  GounHymn map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return GounHymn(
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}number'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      favorite: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}favorite'])!,
    );
  }

  @override
  GounHymns createAlias(String alias) {
    return GounHymns(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
  @override
  String get moduleAndArgs => 'FTS5(number, title, content, favorite)';
}

class GounHymn extends DataClass implements Insertable<GounHymn> {
  final String number;
  final String title;
  final String content;
  final String favorite;
  const GounHymn(
      {required this.number,
      required this.title,
      required this.content,
      required this.favorite});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['number'] = Variable<String>(number);
    map['title'] = Variable<String>(title);
    map['content'] = Variable<String>(content);
    map['favorite'] = Variable<String>(favorite);
    return map;
  }

  GounHymnsCompanion toCompanion(bool nullToAbsent) {
    return GounHymnsCompanion(
      number: Value(number),
      title: Value(title),
      content: Value(content),
      favorite: Value(favorite),
    );
  }

  factory GounHymn.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return GounHymn(
      number: serializer.fromJson<String>(json['number']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      favorite: serializer.fromJson<String>(json['favorite']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'number': serializer.toJson<String>(number),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'favorite': serializer.toJson<String>(favorite),
    };
  }

  GounHymn copyWith(
          {String? number, String? title, String? content, String? favorite}) =>
      GounHymn(
        number: number ?? this.number,
        title: title ?? this.title,
        content: content ?? this.content,
        favorite: favorite ?? this.favorite,
      );
  @override
  String toString() {
    return (StringBuffer('GounHymn(')
          ..write('number: $number, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('favorite: $favorite')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(number, title, content, favorite);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is GounHymn &&
          other.number == this.number &&
          other.title == this.title &&
          other.content == this.content &&
          other.favorite == this.favorite);
}

class GounHymnsCompanion extends UpdateCompanion<GounHymn> {
  final Value<String> number;
  final Value<String> title;
  final Value<String> content;
  final Value<String> favorite;
  final Value<int> rowid;
  const GounHymnsCompanion({
    this.number = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.favorite = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  GounHymnsCompanion.insert({
    required String number,
    required String title,
    required String content,
    required String favorite,
    this.rowid = const Value.absent(),
  })  : number = Value(number),
        title = Value(title),
        content = Value(content),
        favorite = Value(favorite);
  static Insertable<GounHymn> custom({
    Expression<String>? number,
    Expression<String>? title,
    Expression<String>? content,
    Expression<String>? favorite,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (number != null) 'number': number,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
      if (favorite != null) 'favorite': favorite,
      if (rowid != null) 'rowid': rowid,
    });
  }

  GounHymnsCompanion copyWith(
      {Value<String>? number,
      Value<String>? title,
      Value<String>? content,
      Value<String>? favorite,
      Value<int>? rowid}) {
    return GounHymnsCompanion(
      number: number ?? this.number,
      title: title ?? this.title,
      content: content ?? this.content,
      favorite: favorite ?? this.favorite,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (number.present) {
      map['number'] = Variable<String>(number.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (favorite.present) {
      map['favorite'] = Variable<String>(favorite.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('GounHymnsCompanion(')
          ..write('number: $number, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('favorite: $favorite, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class FrHymns extends Table
    with TableInfo<FrHymns, FrHymn>, VirtualTableInfo<FrHymns, FrHymn> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  FrHymns(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  late final GeneratedColumn<String> number = GeneratedColumn<String>(
      'number', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _favoriteMeta =
      const VerificationMeta('favorite');
  late final GeneratedColumn<String> favorite = GeneratedColumn<String>(
      'favorite', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [number, title, content, favorite];
  @override
  String get aliasedName => _alias ?? 'frHymns';
  @override
  String get actualTableName => 'frHymns';
  @override
  VerificationContext validateIntegrity(Insertable<FrHymn> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('favorite')) {
      context.handle(_favoriteMeta,
          favorite.isAcceptableOrUnknown(data['favorite']!, _favoriteMeta));
    } else if (isInserting) {
      context.missing(_favoriteMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  FrHymn map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return FrHymn(
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}number'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      favorite: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}favorite'])!,
    );
  }

  @override
  FrHymns createAlias(String alias) {
    return FrHymns(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
  @override
  String get moduleAndArgs => 'FTS5(number, title, content, favorite)';
}

class FrHymn extends DataClass implements Insertable<FrHymn> {
  final String number;
  final String title;
  final String content;
  final String favorite;
  const FrHymn(
      {required this.number,
      required this.title,
      required this.content,
      required this.favorite});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['number'] = Variable<String>(number);
    map['title'] = Variable<String>(title);
    map['content'] = Variable<String>(content);
    map['favorite'] = Variable<String>(favorite);
    return map;
  }

  FrHymnsCompanion toCompanion(bool nullToAbsent) {
    return FrHymnsCompanion(
      number: Value(number),
      title: Value(title),
      content: Value(content),
      favorite: Value(favorite),
    );
  }

  factory FrHymn.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return FrHymn(
      number: serializer.fromJson<String>(json['number']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      favorite: serializer.fromJson<String>(json['favorite']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'number': serializer.toJson<String>(number),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'favorite': serializer.toJson<String>(favorite),
    };
  }

  FrHymn copyWith(
          {String? number, String? title, String? content, String? favorite}) =>
      FrHymn(
        number: number ?? this.number,
        title: title ?? this.title,
        content: content ?? this.content,
        favorite: favorite ?? this.favorite,
      );
  @override
  String toString() {
    return (StringBuffer('FrHymn(')
          ..write('number: $number, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('favorite: $favorite')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(number, title, content, favorite);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is FrHymn &&
          other.number == this.number &&
          other.title == this.title &&
          other.content == this.content &&
          other.favorite == this.favorite);
}

class FrHymnsCompanion extends UpdateCompanion<FrHymn> {
  final Value<String> number;
  final Value<String> title;
  final Value<String> content;
  final Value<String> favorite;
  final Value<int> rowid;
  const FrHymnsCompanion({
    this.number = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.favorite = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  FrHymnsCompanion.insert({
    required String number,
    required String title,
    required String content,
    required String favorite,
    this.rowid = const Value.absent(),
  })  : number = Value(number),
        title = Value(title),
        content = Value(content),
        favorite = Value(favorite);
  static Insertable<FrHymn> custom({
    Expression<String>? number,
    Expression<String>? title,
    Expression<String>? content,
    Expression<String>? favorite,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (number != null) 'number': number,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
      if (favorite != null) 'favorite': favorite,
      if (rowid != null) 'rowid': rowid,
    });
  }

  FrHymnsCompanion copyWith(
      {Value<String>? number,
      Value<String>? title,
      Value<String>? content,
      Value<String>? favorite,
      Value<int>? rowid}) {
    return FrHymnsCompanion(
      number: number ?? this.number,
      title: title ?? this.title,
      content: content ?? this.content,
      favorite: favorite ?? this.favorite,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (number.present) {
      map['number'] = Variable<String>(number.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (favorite.present) {
      map['favorite'] = Variable<String>(favorite.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('FrHymnsCompanion(')
          ..write('number: $number, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('favorite: $favorite, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class YrHymns extends Table
    with TableInfo<YrHymns, YrHymn>, VirtualTableInfo<YrHymns, YrHymn> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  YrHymns(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  late final GeneratedColumn<String> number = GeneratedColumn<String>(
      'number', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _favoriteMeta =
      const VerificationMeta('favorite');
  late final GeneratedColumn<String> favorite = GeneratedColumn<String>(
      'favorite', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [number, title, content, favorite];
  @override
  String get aliasedName => _alias ?? 'yrHymns';
  @override
  String get actualTableName => 'yrHymns';
  @override
  VerificationContext validateIntegrity(Insertable<YrHymn> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('favorite')) {
      context.handle(_favoriteMeta,
          favorite.isAcceptableOrUnknown(data['favorite']!, _favoriteMeta));
    } else if (isInserting) {
      context.missing(_favoriteMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  YrHymn map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return YrHymn(
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}number'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      favorite: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}favorite'])!,
    );
  }

  @override
  YrHymns createAlias(String alias) {
    return YrHymns(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
  @override
  String get moduleAndArgs => 'FTS5(number, title, content, favorite)';
}

class YrHymn extends DataClass implements Insertable<YrHymn> {
  final String number;
  final String title;
  final String content;
  final String favorite;
  const YrHymn(
      {required this.number,
      required this.title,
      required this.content,
      required this.favorite});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['number'] = Variable<String>(number);
    map['title'] = Variable<String>(title);
    map['content'] = Variable<String>(content);
    map['favorite'] = Variable<String>(favorite);
    return map;
  }

  YrHymnsCompanion toCompanion(bool nullToAbsent) {
    return YrHymnsCompanion(
      number: Value(number),
      title: Value(title),
      content: Value(content),
      favorite: Value(favorite),
    );
  }

  factory YrHymn.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return YrHymn(
      number: serializer.fromJson<String>(json['number']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      favorite: serializer.fromJson<String>(json['favorite']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'number': serializer.toJson<String>(number),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'favorite': serializer.toJson<String>(favorite),
    };
  }

  YrHymn copyWith(
          {String? number, String? title, String? content, String? favorite}) =>
      YrHymn(
        number: number ?? this.number,
        title: title ?? this.title,
        content: content ?? this.content,
        favorite: favorite ?? this.favorite,
      );
  @override
  String toString() {
    return (StringBuffer('YrHymn(')
          ..write('number: $number, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('favorite: $favorite')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(number, title, content, favorite);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is YrHymn &&
          other.number == this.number &&
          other.title == this.title &&
          other.content == this.content &&
          other.favorite == this.favorite);
}

class YrHymnsCompanion extends UpdateCompanion<YrHymn> {
  final Value<String> number;
  final Value<String> title;
  final Value<String> content;
  final Value<String> favorite;
  final Value<int> rowid;
  const YrHymnsCompanion({
    this.number = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.favorite = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  YrHymnsCompanion.insert({
    required String number,
    required String title,
    required String content,
    required String favorite,
    this.rowid = const Value.absent(),
  })  : number = Value(number),
        title = Value(title),
        content = Value(content),
        favorite = Value(favorite);
  static Insertable<YrHymn> custom({
    Expression<String>? number,
    Expression<String>? title,
    Expression<String>? content,
    Expression<String>? favorite,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (number != null) 'number': number,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
      if (favorite != null) 'favorite': favorite,
      if (rowid != null) 'rowid': rowid,
    });
  }

  YrHymnsCompanion copyWith(
      {Value<String>? number,
      Value<String>? title,
      Value<String>? content,
      Value<String>? favorite,
      Value<int>? rowid}) {
    return YrHymnsCompanion(
      number: number ?? this.number,
      title: title ?? this.title,
      content: content ?? this.content,
      favorite: favorite ?? this.favorite,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (number.present) {
      map['number'] = Variable<String>(number.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (favorite.present) {
      map['favorite'] = Variable<String>(favorite.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('YrHymnsCompanion(')
          ..write('number: $number, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('favorite: $favorite, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class EnHymns extends Table
    with TableInfo<EnHymns, EnHymn>, VirtualTableInfo<EnHymns, EnHymn> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  EnHymns(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _numberMeta = const VerificationMeta('number');
  late final GeneratedColumn<String> number = GeneratedColumn<String>(
      'number', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _titleMeta = const VerificationMeta('title');
  late final GeneratedColumn<String> title = GeneratedColumn<String>(
      'title', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _contentMeta =
      const VerificationMeta('content');
  late final GeneratedColumn<String> content = GeneratedColumn<String>(
      'content', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _favoriteMeta =
      const VerificationMeta('favorite');
  late final GeneratedColumn<String> favorite = GeneratedColumn<String>(
      'favorite', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [number, title, content, favorite];
  @override
  String get aliasedName => _alias ?? 'enHymns';
  @override
  String get actualTableName => 'enHymns';
  @override
  VerificationContext validateIntegrity(Insertable<EnHymn> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('number')) {
      context.handle(_numberMeta,
          number.isAcceptableOrUnknown(data['number']!, _numberMeta));
    } else if (isInserting) {
      context.missing(_numberMeta);
    }
    if (data.containsKey('title')) {
      context.handle(
          _titleMeta, title.isAcceptableOrUnknown(data['title']!, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (data.containsKey('content')) {
      context.handle(_contentMeta,
          content.isAcceptableOrUnknown(data['content']!, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    if (data.containsKey('favorite')) {
      context.handle(_favoriteMeta,
          favorite.isAcceptableOrUnknown(data['favorite']!, _favoriteMeta));
    } else if (isInserting) {
      context.missing(_favoriteMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  EnHymn map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return EnHymn(
      number: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}number'])!,
      title: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}title'])!,
      content: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}content'])!,
      favorite: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}favorite'])!,
    );
  }

  @override
  EnHymns createAlias(String alias) {
    return EnHymns(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
  @override
  String get moduleAndArgs => 'FTS5(number, title, content, favorite)';
}

class EnHymn extends DataClass implements Insertable<EnHymn> {
  final String number;
  final String title;
  final String content;
  final String favorite;
  const EnHymn(
      {required this.number,
      required this.title,
      required this.content,
      required this.favorite});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['number'] = Variable<String>(number);
    map['title'] = Variable<String>(title);
    map['content'] = Variable<String>(content);
    map['favorite'] = Variable<String>(favorite);
    return map;
  }

  EnHymnsCompanion toCompanion(bool nullToAbsent) {
    return EnHymnsCompanion(
      number: Value(number),
      title: Value(title),
      content: Value(content),
      favorite: Value(favorite),
    );
  }

  factory EnHymn.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return EnHymn(
      number: serializer.fromJson<String>(json['number']),
      title: serializer.fromJson<String>(json['title']),
      content: serializer.fromJson<String>(json['content']),
      favorite: serializer.fromJson<String>(json['favorite']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'number': serializer.toJson<String>(number),
      'title': serializer.toJson<String>(title),
      'content': serializer.toJson<String>(content),
      'favorite': serializer.toJson<String>(favorite),
    };
  }

  EnHymn copyWith(
          {String? number, String? title, String? content, String? favorite}) =>
      EnHymn(
        number: number ?? this.number,
        title: title ?? this.title,
        content: content ?? this.content,
        favorite: favorite ?? this.favorite,
      );
  @override
  String toString() {
    return (StringBuffer('EnHymn(')
          ..write('number: $number, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('favorite: $favorite')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(number, title, content, favorite);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is EnHymn &&
          other.number == this.number &&
          other.title == this.title &&
          other.content == this.content &&
          other.favorite == this.favorite);
}

class EnHymnsCompanion extends UpdateCompanion<EnHymn> {
  final Value<String> number;
  final Value<String> title;
  final Value<String> content;
  final Value<String> favorite;
  final Value<int> rowid;
  const EnHymnsCompanion({
    this.number = const Value.absent(),
    this.title = const Value.absent(),
    this.content = const Value.absent(),
    this.favorite = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  EnHymnsCompanion.insert({
    required String number,
    required String title,
    required String content,
    required String favorite,
    this.rowid = const Value.absent(),
  })  : number = Value(number),
        title = Value(title),
        content = Value(content),
        favorite = Value(favorite);
  static Insertable<EnHymn> custom({
    Expression<String>? number,
    Expression<String>? title,
    Expression<String>? content,
    Expression<String>? favorite,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (number != null) 'number': number,
      if (title != null) 'title': title,
      if (content != null) 'content': content,
      if (favorite != null) 'favorite': favorite,
      if (rowid != null) 'rowid': rowid,
    });
  }

  EnHymnsCompanion copyWith(
      {Value<String>? number,
      Value<String>? title,
      Value<String>? content,
      Value<String>? favorite,
      Value<int>? rowid}) {
    return EnHymnsCompanion(
      number: number ?? this.number,
      title: title ?? this.title,
      content: content ?? this.content,
      favorite: favorite ?? this.favorite,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (number.present) {
      map['number'] = Variable<String>(number.value);
    }
    if (title.present) {
      map['title'] = Variable<String>(title.value);
    }
    if (content.present) {
      map['content'] = Variable<String>(content.value);
    }
    if (favorite.present) {
      map['favorite'] = Variable<String>(favorite.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('EnHymnsCompanion(')
          ..write('number: $number, ')
          ..write('title: $title, ')
          ..write('content: $content, ')
          ..write('favorite: $favorite, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

class HymnPrograms extends Table
    with
        TableInfo<HymnPrograms, HymnProgram>,
        VirtualTableInfo<HymnPrograms, HymnProgram> {
  @override
  final GeneratedDatabase attachedDatabase;
  final String? _alias;
  HymnPrograms(this.attachedDatabase, [this._alias]);
  static const VerificationMeta _dateMeta = const VerificationMeta('date');
  late final GeneratedColumn<String> date = GeneratedColumn<String>(
      'date', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _firstHymnMeta =
      const VerificationMeta('firstHymn');
  late final GeneratedColumn<String> firstHymn = GeneratedColumn<String>(
      'firstHymn', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _secondHymnMeta =
      const VerificationMeta('secondHymn');
  late final GeneratedColumn<String> secondHymn = GeneratedColumn<String>(
      'secondHymn', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _thirdHymnMeta =
      const VerificationMeta('thirdHymn');
  late final GeneratedColumn<String> thirdHymn = GeneratedColumn<String>(
      'thirdHymn', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _fourthHymnMeta =
      const VerificationMeta('fourthHymn');
  late final GeneratedColumn<String> fourthHymn = GeneratedColumn<String>(
      'fourthHymn', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _fifthHymnMeta =
      const VerificationMeta('fifthHymn');
  late final GeneratedColumn<String> fifthHymn = GeneratedColumn<String>(
      'fifthHymn', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _sixthHymnMeta =
      const VerificationMeta('sixthHymn');
  late final GeneratedColumn<String> sixthHymn = GeneratedColumn<String>(
      'sixthHymn', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  static const VerificationMeta _seventhHymnMeta =
      const VerificationMeta('seventhHymn');
  late final GeneratedColumn<String> seventhHymn = GeneratedColumn<String>(
      'seventhHymn', aliasedName, false,
      type: DriftSqlType.string,
      requiredDuringInsert: true,
      $customConstraints: '');
  @override
  List<GeneratedColumn> get $columns => [
        date,
        firstHymn,
        secondHymn,
        thirdHymn,
        fourthHymn,
        fifthHymn,
        sixthHymn,
        seventhHymn
      ];
  @override
  String get aliasedName => _alias ?? 'hymnPrograms';
  @override
  String get actualTableName => 'hymnPrograms';
  @override
  VerificationContext validateIntegrity(Insertable<HymnProgram> instance,
      {bool isInserting = false}) {
    final context = VerificationContext();
    final data = instance.toColumns(true);
    if (data.containsKey('date')) {
      context.handle(
          _dateMeta, date.isAcceptableOrUnknown(data['date']!, _dateMeta));
    } else if (isInserting) {
      context.missing(_dateMeta);
    }
    if (data.containsKey('firstHymn')) {
      context.handle(_firstHymnMeta,
          firstHymn.isAcceptableOrUnknown(data['firstHymn']!, _firstHymnMeta));
    } else if (isInserting) {
      context.missing(_firstHymnMeta);
    }
    if (data.containsKey('secondHymn')) {
      context.handle(
          _secondHymnMeta,
          secondHymn.isAcceptableOrUnknown(
              data['secondHymn']!, _secondHymnMeta));
    } else if (isInserting) {
      context.missing(_secondHymnMeta);
    }
    if (data.containsKey('thirdHymn')) {
      context.handle(_thirdHymnMeta,
          thirdHymn.isAcceptableOrUnknown(data['thirdHymn']!, _thirdHymnMeta));
    } else if (isInserting) {
      context.missing(_thirdHymnMeta);
    }
    if (data.containsKey('fourthHymn')) {
      context.handle(
          _fourthHymnMeta,
          fourthHymn.isAcceptableOrUnknown(
              data['fourthHymn']!, _fourthHymnMeta));
    } else if (isInserting) {
      context.missing(_fourthHymnMeta);
    }
    if (data.containsKey('fifthHymn')) {
      context.handle(_fifthHymnMeta,
          fifthHymn.isAcceptableOrUnknown(data['fifthHymn']!, _fifthHymnMeta));
    } else if (isInserting) {
      context.missing(_fifthHymnMeta);
    }
    if (data.containsKey('sixthHymn')) {
      context.handle(_sixthHymnMeta,
          sixthHymn.isAcceptableOrUnknown(data['sixthHymn']!, _sixthHymnMeta));
    } else if (isInserting) {
      context.missing(_sixthHymnMeta);
    }
    if (data.containsKey('seventhHymn')) {
      context.handle(
          _seventhHymnMeta,
          seventhHymn.isAcceptableOrUnknown(
              data['seventhHymn']!, _seventhHymnMeta));
    } else if (isInserting) {
      context.missing(_seventhHymnMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => const {};
  @override
  HymnProgram map(Map<String, dynamic> data, {String? tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : '';
    return HymnProgram(
      date: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}date'])!,
      firstHymn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}firstHymn'])!,
      secondHymn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}secondHymn'])!,
      thirdHymn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}thirdHymn'])!,
      fourthHymn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}fourthHymn'])!,
      fifthHymn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}fifthHymn'])!,
      sixthHymn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}sixthHymn'])!,
      seventhHymn: attachedDatabase.typeMapping
          .read(DriftSqlType.string, data['${effectivePrefix}seventhHymn'])!,
    );
  }

  @override
  HymnPrograms createAlias(String alias) {
    return HymnPrograms(attachedDatabase, alias);
  }

  @override
  bool get dontWriteConstraints => true;
  @override
  String get moduleAndArgs =>
      'FTS5(date, firstHymn, secondHymn, thirdHymn, fourthHymn, fifthHymn, sixthHymn, seventhHymn)';
}

class HymnProgram extends DataClass implements Insertable<HymnProgram> {
  final String date;
  final String firstHymn;
  final String secondHymn;
  final String thirdHymn;
  final String fourthHymn;
  final String fifthHymn;
  final String sixthHymn;
  final String seventhHymn;
  const HymnProgram(
      {required this.date,
      required this.firstHymn,
      required this.secondHymn,
      required this.thirdHymn,
      required this.fourthHymn,
      required this.fifthHymn,
      required this.sixthHymn,
      required this.seventhHymn});
  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    map['date'] = Variable<String>(date);
    map['firstHymn'] = Variable<String>(firstHymn);
    map['secondHymn'] = Variable<String>(secondHymn);
    map['thirdHymn'] = Variable<String>(thirdHymn);
    map['fourthHymn'] = Variable<String>(fourthHymn);
    map['fifthHymn'] = Variable<String>(fifthHymn);
    map['sixthHymn'] = Variable<String>(sixthHymn);
    map['seventhHymn'] = Variable<String>(seventhHymn);
    return map;
  }

  HymnProgramsCompanion toCompanion(bool nullToAbsent) {
    return HymnProgramsCompanion(
      date: Value(date),
      firstHymn: Value(firstHymn),
      secondHymn: Value(secondHymn),
      thirdHymn: Value(thirdHymn),
      fourthHymn: Value(fourthHymn),
      fifthHymn: Value(fifthHymn),
      sixthHymn: Value(sixthHymn),
      seventhHymn: Value(seventhHymn),
    );
  }

  factory HymnProgram.fromJson(Map<String, dynamic> json,
      {ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return HymnProgram(
      date: serializer.fromJson<String>(json['date']),
      firstHymn: serializer.fromJson<String>(json['firstHymn']),
      secondHymn: serializer.fromJson<String>(json['secondHymn']),
      thirdHymn: serializer.fromJson<String>(json['thirdHymn']),
      fourthHymn: serializer.fromJson<String>(json['fourthHymn']),
      fifthHymn: serializer.fromJson<String>(json['fifthHymn']),
      sixthHymn: serializer.fromJson<String>(json['sixthHymn']),
      seventhHymn: serializer.fromJson<String>(json['seventhHymn']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer? serializer}) {
    serializer ??= driftRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'date': serializer.toJson<String>(date),
      'firstHymn': serializer.toJson<String>(firstHymn),
      'secondHymn': serializer.toJson<String>(secondHymn),
      'thirdHymn': serializer.toJson<String>(thirdHymn),
      'fourthHymn': serializer.toJson<String>(fourthHymn),
      'fifthHymn': serializer.toJson<String>(fifthHymn),
      'sixthHymn': serializer.toJson<String>(sixthHymn),
      'seventhHymn': serializer.toJson<String>(seventhHymn),
    };
  }

  HymnProgram copyWith(
          {String? date,
          String? firstHymn,
          String? secondHymn,
          String? thirdHymn,
          String? fourthHymn,
          String? fifthHymn,
          String? sixthHymn,
          String? seventhHymn}) =>
      HymnProgram(
        date: date ?? this.date,
        firstHymn: firstHymn ?? this.firstHymn,
        secondHymn: secondHymn ?? this.secondHymn,
        thirdHymn: thirdHymn ?? this.thirdHymn,
        fourthHymn: fourthHymn ?? this.fourthHymn,
        fifthHymn: fifthHymn ?? this.fifthHymn,
        sixthHymn: sixthHymn ?? this.sixthHymn,
        seventhHymn: seventhHymn ?? this.seventhHymn,
      );
  @override
  String toString() {
    return (StringBuffer('HymnProgram(')
          ..write('date: $date, ')
          ..write('firstHymn: $firstHymn, ')
          ..write('secondHymn: $secondHymn, ')
          ..write('thirdHymn: $thirdHymn, ')
          ..write('fourthHymn: $fourthHymn, ')
          ..write('fifthHymn: $fifthHymn, ')
          ..write('sixthHymn: $sixthHymn, ')
          ..write('seventhHymn: $seventhHymn')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => Object.hash(date, firstHymn, secondHymn, thirdHymn,
      fourthHymn, fifthHymn, sixthHymn, seventhHymn);
  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      (other is HymnProgram &&
          other.date == this.date &&
          other.firstHymn == this.firstHymn &&
          other.secondHymn == this.secondHymn &&
          other.thirdHymn == this.thirdHymn &&
          other.fourthHymn == this.fourthHymn &&
          other.fifthHymn == this.fifthHymn &&
          other.sixthHymn == this.sixthHymn &&
          other.seventhHymn == this.seventhHymn);
}

class HymnProgramsCompanion extends UpdateCompanion<HymnProgram> {
  final Value<String> date;
  final Value<String> firstHymn;
  final Value<String> secondHymn;
  final Value<String> thirdHymn;
  final Value<String> fourthHymn;
  final Value<String> fifthHymn;
  final Value<String> sixthHymn;
  final Value<String> seventhHymn;
  final Value<int> rowid;
  const HymnProgramsCompanion({
    this.date = const Value.absent(),
    this.firstHymn = const Value.absent(),
    this.secondHymn = const Value.absent(),
    this.thirdHymn = const Value.absent(),
    this.fourthHymn = const Value.absent(),
    this.fifthHymn = const Value.absent(),
    this.sixthHymn = const Value.absent(),
    this.seventhHymn = const Value.absent(),
    this.rowid = const Value.absent(),
  });
  HymnProgramsCompanion.insert({
    required String date,
    required String firstHymn,
    required String secondHymn,
    required String thirdHymn,
    required String fourthHymn,
    required String fifthHymn,
    required String sixthHymn,
    required String seventhHymn,
    this.rowid = const Value.absent(),
  })  : date = Value(date),
        firstHymn = Value(firstHymn),
        secondHymn = Value(secondHymn),
        thirdHymn = Value(thirdHymn),
        fourthHymn = Value(fourthHymn),
        fifthHymn = Value(fifthHymn),
        sixthHymn = Value(sixthHymn),
        seventhHymn = Value(seventhHymn);
  static Insertable<HymnProgram> custom({
    Expression<String>? date,
    Expression<String>? firstHymn,
    Expression<String>? secondHymn,
    Expression<String>? thirdHymn,
    Expression<String>? fourthHymn,
    Expression<String>? fifthHymn,
    Expression<String>? sixthHymn,
    Expression<String>? seventhHymn,
    Expression<int>? rowid,
  }) {
    return RawValuesInsertable({
      if (date != null) 'date': date,
      if (firstHymn != null) 'firstHymn': firstHymn,
      if (secondHymn != null) 'secondHymn': secondHymn,
      if (thirdHymn != null) 'thirdHymn': thirdHymn,
      if (fourthHymn != null) 'fourthHymn': fourthHymn,
      if (fifthHymn != null) 'fifthHymn': fifthHymn,
      if (sixthHymn != null) 'sixthHymn': sixthHymn,
      if (seventhHymn != null) 'seventhHymn': seventhHymn,
      if (rowid != null) 'rowid': rowid,
    });
  }

  HymnProgramsCompanion copyWith(
      {Value<String>? date,
      Value<String>? firstHymn,
      Value<String>? secondHymn,
      Value<String>? thirdHymn,
      Value<String>? fourthHymn,
      Value<String>? fifthHymn,
      Value<String>? sixthHymn,
      Value<String>? seventhHymn,
      Value<int>? rowid}) {
    return HymnProgramsCompanion(
      date: date ?? this.date,
      firstHymn: firstHymn ?? this.firstHymn,
      secondHymn: secondHymn ?? this.secondHymn,
      thirdHymn: thirdHymn ?? this.thirdHymn,
      fourthHymn: fourthHymn ?? this.fourthHymn,
      fifthHymn: fifthHymn ?? this.fifthHymn,
      sixthHymn: sixthHymn ?? this.sixthHymn,
      seventhHymn: seventhHymn ?? this.seventhHymn,
      rowid: rowid ?? this.rowid,
    );
  }

  @override
  Map<String, Expression> toColumns(bool nullToAbsent) {
    final map = <String, Expression>{};
    if (date.present) {
      map['date'] = Variable<String>(date.value);
    }
    if (firstHymn.present) {
      map['firstHymn'] = Variable<String>(firstHymn.value);
    }
    if (secondHymn.present) {
      map['secondHymn'] = Variable<String>(secondHymn.value);
    }
    if (thirdHymn.present) {
      map['thirdHymn'] = Variable<String>(thirdHymn.value);
    }
    if (fourthHymn.present) {
      map['fourthHymn'] = Variable<String>(fourthHymn.value);
    }
    if (fifthHymn.present) {
      map['fifthHymn'] = Variable<String>(fifthHymn.value);
    }
    if (sixthHymn.present) {
      map['sixthHymn'] = Variable<String>(sixthHymn.value);
    }
    if (seventhHymn.present) {
      map['seventhHymn'] = Variable<String>(seventhHymn.value);
    }
    if (rowid.present) {
      map['rowid'] = Variable<int>(rowid.value);
    }
    return map;
  }

  @override
  String toString() {
    return (StringBuffer('HymnProgramsCompanion(')
          ..write('date: $date, ')
          ..write('firstHymn: $firstHymn, ')
          ..write('secondHymn: $secondHymn, ')
          ..write('thirdHymn: $thirdHymn, ')
          ..write('fourthHymn: $fourthHymn, ')
          ..write('fifthHymn: $fifthHymn, ')
          ..write('sixthHymn: $sixthHymn, ')
          ..write('seventhHymn: $seventhHymn, ')
          ..write('rowid: $rowid')
          ..write(')'))
        .toString();
  }
}

abstract class _$HymnsDb extends GeneratedDatabase {
  _$HymnsDb(QueryExecutor e) : super(e);
  late final GounHymns gounHymns = GounHymns(this);
  late final FrHymns frHymns = FrHymns(this);
  late final YrHymns yrHymns = YrHymns(this);
  late final EnHymns enHymns = EnHymns(this);
  late final HymnPrograms hymnPrograms = HymnPrograms(this);
  Selectable<GounHymn> allGounHymns() {
    return customSelect('SELECT * FROM gounHymns', variables: [], readsFrom: {
      gounHymns,
    }).asyncMap(gounHymns.mapFromRow);
  }

  Selectable<FrHymn> allFrenchHymns() {
    return customSelect('SELECT * FROM frHymns', variables: [], readsFrom: {
      frHymns,
    }).asyncMap(frHymns.mapFromRow);
  }

  Selectable<YrHymn> allYorubaHymns() {
    return customSelect('SELECT * FROM yrHymns', variables: [], readsFrom: {
      yrHymns,
    }).asyncMap(yrHymns.mapFromRow);
  }

  Selectable<EnHymn> allEnglishHymns() {
    return customSelect('SELECT * FROM enHymns', variables: [], readsFrom: {
      enHymns,
    }).asyncMap(enHymns.mapFromRow);
  }

  Selectable<HymnProgram> allHymnPrograms() {
    return customSelect('SELECT * FROM hymnPrograms',
        variables: [],
        readsFrom: {
          hymnPrograms,
        }).asyncMap(hymnPrograms.mapFromRow);
  }

  Selectable<GounHymn> gounHymnSearchResults(
      {GounHymnSearchResults$predicate? predicate}) {
    var $arrayStartIndex = 1;
    final generatedpredicate = $write(
        predicate?.call(this.gounHymns) ?? const CustomExpression('(TRUE)'),
        startIndex: $arrayStartIndex);
    $arrayStartIndex += generatedpredicate.amountOfVariables;
    return customSelect(
        'SELECT * FROM gounHymns WHERE ${generatedpredicate.sql} AND rank MATCH \'bm25(10.1, 16.9, 10.0)\' ORDER BY rank',
        variables: [
          ...generatedpredicate.introducedVariables
        ],
        readsFrom: {
          gounHymns,
          ...generatedpredicate.watchedTables,
        }).asyncMap(gounHymns.mapFromRow);
  }

  Selectable<FrHymn> frenchHymnSearchResults(
      {FrenchHymnSearchResults$predicate? predicate}) {
    var $arrayStartIndex = 1;
    final generatedpredicate = $write(
        predicate?.call(this.frHymns) ?? const CustomExpression('(TRUE)'),
        startIndex: $arrayStartIndex);
    $arrayStartIndex += generatedpredicate.amountOfVariables;
    return customSelect(
        'SELECT * FROM frHymns WHERE ${generatedpredicate.sql} AND rank MATCH \'bm25(10.1, 16.9, 10.0)\' ORDER BY rank',
        variables: [
          ...generatedpredicate.introducedVariables
        ],
        readsFrom: {
          frHymns,
          ...generatedpredicate.watchedTables,
        }).asyncMap(frHymns.mapFromRow);
  }

  Selectable<YrHymn> yorubaHymnSearchResults(
      {YorubaHymnSearchResults$predicate? predicate}) {
    var $arrayStartIndex = 1;
    final generatedpredicate = $write(
        predicate?.call(this.yrHymns) ?? const CustomExpression('(TRUE)'),
        startIndex: $arrayStartIndex);
    $arrayStartIndex += generatedpredicate.amountOfVariables;
    return customSelect(
        'SELECT * FROM yrHymns WHERE ${generatedpredicate.sql} AND rank MATCH \'bm25(10.1, 16.9, 10.0)\' ORDER BY rank',
        variables: [
          ...generatedpredicate.introducedVariables
        ],
        readsFrom: {
          yrHymns,
          ...generatedpredicate.watchedTables,
        }).asyncMap(yrHymns.mapFromRow);
  }

  Selectable<EnHymn> englishHymnSearchResults(
      {EnglishHymnSearchResults$predicate? predicate}) {
    var $arrayStartIndex = 1;
    final generatedpredicate = $write(
        predicate?.call(this.enHymns) ?? const CustomExpression('(TRUE)'),
        startIndex: $arrayStartIndex);
    $arrayStartIndex += generatedpredicate.amountOfVariables;
    return customSelect(
        'SELECT * FROM enHymns WHERE ${generatedpredicate.sql} AND rank MATCH \'bm25(10.1, 16.9, 10.0)\' ORDER BY rank',
        variables: [
          ...generatedpredicate.introducedVariables
        ],
        readsFrom: {
          enHymns,
          ...generatedpredicate.watchedTables,
        }).asyncMap(enHymns.mapFromRow);
  }

  Selectable<GounHymn> gounFavoritesHymns() {
    return customSelect('SELECT * FROM gounHymns WHERE favorite = 1',
        variables: [],
        readsFrom: {
          gounHymns,
        }).asyncMap(gounHymns.mapFromRow);
  }

  Selectable<FrHymn> frenchFavoritesHymns() {
    return customSelect('SELECT * FROM frHymns WHERE favorite = 1',
        variables: [],
        readsFrom: {
          frHymns,
        }).asyncMap(frHymns.mapFromRow);
  }

  Selectable<YrHymn> yorubaFavoritesHymns() {
    return customSelect('SELECT * FROM yrHymns WHERE favorite = 1',
        variables: [],
        readsFrom: {
          yrHymns,
        }).asyncMap(yrHymns.mapFromRow);
  }

  Selectable<EnHymn> englishFavoritesHymns() {
    return customSelect('SELECT * FROM enHymns WHERE favorite = 1',
        variables: [],
        readsFrom: {
          enHymns,
        }).asyncMap(enHymns.mapFromRow);
  }

  Future<int> setFavoriteGounHymn(String hymnNumber) {
    return customUpdate(
      'UPDATE gounHymns SET favorite = 1 WHERE number = ?1',
      variables: [Variable<String>(hymnNumber)],
      updates: {gounHymns},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> setFavoriteFrenchHymn(String hymnNumber) {
    return customUpdate(
      'UPDATE frHymns SET favorite = 1 WHERE number = ?1',
      variables: [Variable<String>(hymnNumber)],
      updates: {frHymns},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> setFavoriteYorubaHymn(String hymnNumber) {
    return customUpdate(
      'UPDATE yrHymns SET favorite = 1 WHERE number = ?1',
      variables: [Variable<String>(hymnNumber)],
      updates: {yrHymns},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> setFavoriteEnglishHymn(String hymnNumber) {
    return customUpdate(
      'UPDATE enHymns SET favorite = 1 WHERE number = ?1',
      variables: [Variable<String>(hymnNumber)],
      updates: {enHymns},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> removeFavoriteGounHymn(String hymnNumber) {
    return customUpdate(
      'UPDATE gounHymns SET favorite = 0 WHERE number = ?1',
      variables: [Variable<String>(hymnNumber)],
      updates: {gounHymns},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> removeFavoriteFrenchHymn(String hymnNumber) {
    return customUpdate(
      'UPDATE frHymns SET favorite = 0 WHERE number = ?1',
      variables: [Variable<String>(hymnNumber)],
      updates: {frHymns},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> removeFavoriteYorubaHymn(String hymnNumber) {
    return customUpdate(
      'UPDATE yrHymns SET favorite = 0 WHERE number = ?1',
      variables: [Variable<String>(hymnNumber)],
      updates: {yrHymns},
      updateKind: UpdateKind.update,
    );
  }

  Future<int> removeFavoriteEnglishHymn(String hymnNumber) {
    return customUpdate(
      'UPDATE enHymns SET favorite = 0 WHERE number = ?1',
      variables: [Variable<String>(hymnNumber)],
      updates: {enHymns},
      updateKind: UpdateKind.update,
    );
  }

  @override
  Iterable<TableInfo<Table, Object?>> get allTables =>
      allSchemaEntities.whereType<TableInfo<Table, Object?>>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities =>
      [gounHymns, frHymns, yrHymns, enHymns, hymnPrograms];
}

typedef GounHymnSearchResults$predicate = Expression<bool> Function(
    GounHymns gounHymns);
typedef FrenchHymnSearchResults$predicate = Expression<bool> Function(
    FrHymns frHymns);
typedef YorubaHymnSearchResults$predicate = Expression<bool> Function(
    YrHymns yrHymns);
typedef EnglishHymnSearchResults$predicate = Expression<bool> Function(
    EnHymns enHymns);
