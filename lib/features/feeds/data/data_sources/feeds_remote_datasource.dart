import 'package:dartz/dartz.dart';
import 'package:fluttercleanboilerplate/features/feeds/domain/entities/Feed.dart';

abstract class FeedsRemoteDataSource {
  Future<Feed> getTopHeadlines();
}