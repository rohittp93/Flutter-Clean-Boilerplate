import 'package:fluttercleanboilerplate/data/models/feed/built_feed.dart';
import 'package:meta/meta.dart';

@immutable
abstract class FeedsState {}

class InitialFeedsState extends FeedsState {}

class FeedsFetchedState extends FeedsState {
  final BuiltFeed builtFeed;

  FeedsFetchedState({this.builtFeed}) : super();
}

class FeedsFailedState extends FeedsState {
  final String errorMsg;

  FeedsFailedState({@required this.errorMsg});
}