library built_feed;

import 'dart:convert';
import 'package:built_collection/built_collection.dart';
import 'package:built_value/built_value.dart';
import 'package:built_value/serializer.dart';
import 'package:fluttercleanboilerplate/features/feeds/data/models/built_article.dart';
import 'package:fluttercleanboilerplate/features/feeds/data/serializers/serializers.dart';

part 'built_feed.g.dart';

abstract class BuiltFeed implements Built<BuiltFeed, BuiltFeedBuilder> {
    String get status;
    int get totalResults;
    List<BuiltArticle> get articles;

    BuiltFeed._();

    factory BuiltFeed([updates(BuiltFeedBuilder b)]) = _$BuiltFeed;

    String toJson() {
        return json.encode(serializers.serializeWith(BuiltFeed.serializer, this));
    }

    static BuiltFeed fromJson(String jsonString) {
        return serializers.deserializeWith(BuiltFeed.serializer, json.decode(jsonString));
    }

    static Serializer<BuiltFeed> get serializer => _$builtFeedSerializer;
}