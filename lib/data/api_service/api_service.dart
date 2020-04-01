import 'package:chopper/chopper.dart';
import 'package:fluttercleanboilerplate/core/util/api_constants.dart';
import 'package:fluttercleanboilerplate/data/models/article/built_article.dart';
import 'package:fluttercleanboilerplate/data/serializers/built_value_converter.dart';
import 'package:http/http.dart' as http;
import 'package:built_collection/built_collection.dart';

part 'api_service.chopper.dart';

@ChopperApi(baseUrl: BASE_URL)
abstract class ApiService extends ChopperService {

  @Get(path: TOPHEADLINES_ENDPOINT)
  Future<Response<BuiltList<BuiltArticle>>> fetchArticles();

  static ApiService create() {
    final client = ChopperClient(
        baseUrl: BASE_URL,
        services: [_$ApiService()],
        converter: BuiltValueConverter(),
        interceptors: [
          HttpLoggingInterceptor(),
        ]);
    return _$ApiService(client);
  }
}
