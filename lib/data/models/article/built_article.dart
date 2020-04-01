library built_article;

import 'dart:convert';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluttercleanboilerplate/data/serializers/serializers.dart';

part 'built_article.g.dart';

abstract class BuiltArticle
    implements Built<BuiltArticle, BuiltArticleBuilder> {
  String get title;

  String get description;

  String get url;

  String get urlToImage;

  String get content;

  BuiltArticle._();

  factory BuiltArticle([updates(BuiltArticleBuilder b)]) = _$BuiltArticle;

  String toJson() {
    return json
        .encode(serializers.serializeWith(BuiltArticle.serializer, this));
  }

  static BuiltArticle fromJson(String jsonString) {
    return serializers.deserializeWith(
        BuiltArticle.serializer, json.decode(jsonString));
  }

  static Serializer<BuiltArticle> get serializer => _$builtArticleSerializer;
}