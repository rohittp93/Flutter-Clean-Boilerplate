import 'package:fluttercleanboilerplate/features/feeds/domain/entities/Feed.dart';

abstract class FeedsLocalDataSource {
  Future<Feed> getFavoriteFeeds();
  Future<void> addFeedToFavorites(Feed feed);
}