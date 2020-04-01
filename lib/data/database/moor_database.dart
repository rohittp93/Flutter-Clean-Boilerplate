import 'package:moor_flutter/moor_flutter.dart';

part 'moor_database.g.dart';

@DataClassName('Article')
class Articles extends Table {
  IntColumn get id => integer()();
  TextColumn get title => text()();
  TextColumn get description => text()();
  TextColumn get url => text()();
  TextColumn get urlToImage => text()();
  TextColumn get content => text()();

  @override
  Set<Column> get primaryKey => {id};
}

@UseMoor(tables: [Articles])
class AppDatabase extends _$AppDatabase {
  AppDatabase()
      : super(FlutterQueryExecutor.inDatabaseFolder(
            path: 'db.sqlite', logStatements: true));

  @override
  int get schemaVersion => 1;

  Future<List<Article>> getSavedArticles() => select(articles).get();
  Stream<List<Article>> watchAllArticles() => select(articles).watch();
  Future insertArticle(Article article) => into(articles).insert(article);
  Future insertArticles(List<Article> articleList) =>
      into(articles).insertAll(articleList);
  Future updateArticle(Article article) => update(articles).replace(article);
  Future deleteArticle(Article article) => delete(articles).delete(article);
}