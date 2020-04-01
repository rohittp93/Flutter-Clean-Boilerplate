import 'package:fluttercleanboilerplate/data/models/feed/built_feed.dart';
import 'package:meta/meta.dart';

@immutable
abstract class FeedsEvent {}

class FetchFeeds extends FeedsEvent {
  final BuiltFeed builtFeed;

  FetchFeeds(this.builtFeed);

  @override
  List<Object> get props => null;
}