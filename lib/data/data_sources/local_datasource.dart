
import 'package:fluttercleanboilerplate/domain/entities/Feed.dart';

abstract class LocalDataSource {
  Future<Feed> getFavoriteFeeds();
  Future<void> addFeedToFavorites(Feed feed);
}

class LocalDataSourceImpl extends LocalDataSource {
  @override
  Future<void> addFeedToFavorites(Feed feed) {
    return null;
  }

  @override
  Future<Feed> getFavoriteFeeds() {
    return null;
  }
}