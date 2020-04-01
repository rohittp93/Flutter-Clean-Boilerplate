import 'package:built_value/serializer.dart';
import 'package:built_value/standard_json_plugin.dart';
import 'package:fluttercleanboilerplate/data/models/article/built_article.dart';
import 'package:fluttercleanboilerplate/data/models/feed/built_feed.dart';

part 'serializers.g.dart';

@SerializersFor(const [
  BuiltFeed,
  BuiltArticle,
])
final Serializers serializers =
    (_$serializers.toBuilder()..addPlugin(StandardJsonPlugin())).build();
