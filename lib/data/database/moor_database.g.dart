// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'moor_database.dart';

// **************************************************************************
// MoorGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps, unnecessary_this
class Article extends DataClass implements Insertable<Article> {
  final int id;
  final String title;
  final String description;
  final String url;
  final String urlToImage;
  final String content;
  Article(
      {@required this.id,
      @required this.title,
      @required this.description,
      @required this.url,
      @required this.urlToImage,
      @required this.content});
  factory Article.fromData(Map<String, dynamic> data, GeneratedDatabase db,
      {String prefix}) {
    final effectivePrefix = prefix ?? '';
    final intType = db.typeSystem.forDartType<int>();
    final stringType = db.typeSystem.forDartType<String>();
    return Article(
      id: intType.mapFromDatabaseResponse(data['${effectivePrefix}id']),
      title:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}title']),
      description: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}description']),
      url: stringType.mapFromDatabaseResponse(data['${effectivePrefix}url']),
      urlToImage: stringType
          .mapFromDatabaseResponse(data['${effectivePrefix}url_to_image']),
      content:
          stringType.mapFromDatabaseResponse(data['${effectivePrefix}content']),
    );
  }
  factory Article.fromJson(Map<String, dynamic> json,
      {ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return Article(
      id: serializer.fromJson<int>(json['id']),
      title: serializer.fromJson<String>(json['title']),
      description: serializer.fromJson<String>(json['description']),
      url: serializer.fromJson<String>(json['url']),
      urlToImage: serializer.fromJson<String>(json['urlToImage']),
      content: serializer.fromJson<String>(json['content']),
    );
  }
  @override
  Map<String, dynamic> toJson({ValueSerializer serializer}) {
    serializer ??= moorRuntimeOptions.defaultSerializer;
    return <String, dynamic>{
      'id': serializer.toJson<int>(id),
      'title': serializer.toJson<String>(title),
      'description': serializer.toJson<String>(description),
      'url': serializer.toJson<String>(url),
      'urlToImage': serializer.toJson<String>(urlToImage),
      'content': serializer.toJson<String>(content),
    };
  }

  @override
  ArticlesCompanion createCompanion(bool nullToAbsent) {
    return ArticlesCompanion(
      id: id == null && nullToAbsent ? const Value.absent() : Value(id),
      title:
          title == null && nullToAbsent ? const Value.absent() : Value(title),
      description: description == null && nullToAbsent
          ? const Value.absent()
          : Value(description),
      url: url == null && nullToAbsent ? const Value.absent() : Value(url),
      urlToImage: urlToImage == null && nullToAbsent
          ? const Value.absent()
          : Value(urlToImage),
      content: content == null && nullToAbsent
          ? const Value.absent()
          : Value(content),
    );
  }

  Article copyWith(
          {int id,
          String title,
          String description,
          String url,
          String urlToImage,
          String content}) =>
      Article(
        id: id ?? this.id,
        title: title ?? this.title,
        description: description ?? this.description,
        url: url ?? this.url,
        urlToImage: urlToImage ?? this.urlToImage,
        content: content ?? this.content,
      );
  @override
  String toString() {
    return (StringBuffer('Article(')
          ..write('id: $id, ')
          ..write('title: $title, ')
          ..write('description: $description, ')
          ..write('url: $url, ')
          ..write('urlToImage: $urlToImage, ')
          ..write('content: $content')
          ..write(')'))
        .toString();
  }

  @override
  int get hashCode => $mrjf($mrjc(
      id.hashCode,
      $mrjc(
          title.hashCode,
          $mrjc(
              description.hashCode,
              $mrjc(url.hashCode,
                  $mrjc(urlToImage.hashCode, content.hashCode))))));
  @override
  bool operator ==(dynamic other) =>
      identical(this, other) ||
      (other is Article &&
          other.id == this.id &&
          other.title == this.title &&
          other.description == this.description &&
          other.url == this.url &&
          other.urlToImage == this.urlToImage &&
          other.content == this.content);
}

class ArticlesCompanion extends UpdateCompanion<Article> {
  final Value<int> id;
  final Value<String> title;
  final Value<String> description;
  final Value<String> url;
  final Value<String> urlToImage;
  final Value<String> content;
  const ArticlesCompanion({
    this.id = const Value.absent(),
    this.title = const Value.absent(),
    this.description = const Value.absent(),
    this.url = const Value.absent(),
    this.urlToImage = const Value.absent(),
    this.content = const Value.absent(),
  });
  ArticlesCompanion.insert({
    @required int id,
    @required String title,
    @required String description,
    @required String url,
    @required String urlToImage,
    @required String content,
  })  : id = Value(id),
        title = Value(title),
        description = Value(description),
        url = Value(url),
        urlToImage = Value(urlToImage),
        content = Value(content);
  ArticlesCompanion copyWith(
      {Value<int> id,
      Value<String> title,
      Value<String> description,
      Value<String> url,
      Value<String> urlToImage,
      Value<String> content}) {
    return ArticlesCompanion(
      id: id ?? this.id,
      title: title ?? this.title,
      description: description ?? this.description,
      url: url ?? this.url,
      urlToImage: urlToImage ?? this.urlToImage,
      content: content ?? this.content,
    );
  }
}

class $ArticlesTable extends Articles with TableInfo<$ArticlesTable, Article> {
  final GeneratedDatabase _db;
  final String _alias;
  $ArticlesTable(this._db, [this._alias]);
  final VerificationMeta _idMeta = const VerificationMeta('id');
  GeneratedIntColumn _id;
  @override
  GeneratedIntColumn get id => _id ??= _constructId();
  GeneratedIntColumn _constructId() {
    return GeneratedIntColumn(
      'id',
      $tableName,
      false,
    );
  }

  final VerificationMeta _titleMeta = const VerificationMeta('title');
  GeneratedTextColumn _title;
  @override
  GeneratedTextColumn get title => _title ??= _constructTitle();
  GeneratedTextColumn _constructTitle() {
    return GeneratedTextColumn(
      'title',
      $tableName,
      false,
    );
  }

  final VerificationMeta _descriptionMeta =
      const VerificationMeta('description');
  GeneratedTextColumn _description;
  @override
  GeneratedTextColumn get description =>
      _description ??= _constructDescription();
  GeneratedTextColumn _constructDescription() {
    return GeneratedTextColumn(
      'description',
      $tableName,
      false,
    );
  }

  final VerificationMeta _urlMeta = const VerificationMeta('url');
  GeneratedTextColumn _url;
  @override
  GeneratedTextColumn get url => _url ??= _constructUrl();
  GeneratedTextColumn _constructUrl() {
    return GeneratedTextColumn(
      'url',
      $tableName,
      false,
    );
  }

  final VerificationMeta _urlToImageMeta = const VerificationMeta('urlToImage');
  GeneratedTextColumn _urlToImage;
  @override
  GeneratedTextColumn get urlToImage => _urlToImage ??= _constructUrlToImage();
  GeneratedTextColumn _constructUrlToImage() {
    return GeneratedTextColumn(
      'url_to_image',
      $tableName,
      false,
    );
  }

  final VerificationMeta _contentMeta = const VerificationMeta('content');
  GeneratedTextColumn _content;
  @override
  GeneratedTextColumn get content => _content ??= _constructContent();
  GeneratedTextColumn _constructContent() {
    return GeneratedTextColumn(
      'content',
      $tableName,
      false,
    );
  }

  @override
  List<GeneratedColumn> get $columns =>
      [id, title, description, url, urlToImage, content];
  @override
  $ArticlesTable get asDslTable => this;
  @override
  String get $tableName => _alias ?? 'articles';
  @override
  final String actualTableName = 'articles';
  @override
  VerificationContext validateIntegrity(ArticlesCompanion d,
      {bool isInserting = false}) {
    final context = VerificationContext();
    if (d.id.present) {
      context.handle(_idMeta, id.isAcceptableValue(d.id.value, _idMeta));
    } else if (isInserting) {
      context.missing(_idMeta);
    }
    if (d.title.present) {
      context.handle(
          _titleMeta, title.isAcceptableValue(d.title.value, _titleMeta));
    } else if (isInserting) {
      context.missing(_titleMeta);
    }
    if (d.description.present) {
      context.handle(_descriptionMeta,
          description.isAcceptableValue(d.description.value, _descriptionMeta));
    } else if (isInserting) {
      context.missing(_descriptionMeta);
    }
    if (d.url.present) {
      context.handle(_urlMeta, url.isAcceptableValue(d.url.value, _urlMeta));
    } else if (isInserting) {
      context.missing(_urlMeta);
    }
    if (d.urlToImage.present) {
      context.handle(_urlToImageMeta,
          urlToImage.isAcceptableValue(d.urlToImage.value, _urlToImageMeta));
    } else if (isInserting) {
      context.missing(_urlToImageMeta);
    }
    if (d.content.present) {
      context.handle(_contentMeta,
          content.isAcceptableValue(d.content.value, _contentMeta));
    } else if (isInserting) {
      context.missing(_contentMeta);
    }
    return context;
  }

  @override
  Set<GeneratedColumn> get $primaryKey => {id};
  @override
  Article map(Map<String, dynamic> data, {String tablePrefix}) {
    final effectivePrefix = tablePrefix != null ? '$tablePrefix.' : null;
    return Article.fromData(data, _db, prefix: effectivePrefix);
  }

  @override
  Map<String, Variable> entityToSql(ArticlesCompanion d) {
    final map = <String, Variable>{};
    if (d.id.present) {
      map['id'] = Variable<int, IntType>(d.id.value);
    }
    if (d.title.present) {
      map['title'] = Variable<String, StringType>(d.title.value);
    }
    if (d.description.present) {
      map['description'] = Variable<String, StringType>(d.description.value);
    }
    if (d.url.present) {
      map['url'] = Variable<String, StringType>(d.url.value);
    }
    if (d.urlToImage.present) {
      map['url_to_image'] = Variable<String, StringType>(d.urlToImage.value);
    }
    if (d.content.present) {
      map['content'] = Variable<String, StringType>(d.content.value);
    }
    return map;
  }

  @override
  $ArticlesTable createAlias(String alias) {
    return $ArticlesTable(_db, alias);
  }
}

abstract class _$AppDatabase extends GeneratedDatabase {
  _$AppDatabase(QueryExecutor e) : super(SqlTypeSystem.defaultInstance, e);
  $ArticlesTable _articles;
  $ArticlesTable get articles => _articles ??= $ArticlesTable(this);
  @override
  Iterable<TableInfo> get allTables => allSchemaEntities.whereType<TableInfo>();
  @override
  List<DatabaseSchemaEntity> get allSchemaEntities => [articles];
}
