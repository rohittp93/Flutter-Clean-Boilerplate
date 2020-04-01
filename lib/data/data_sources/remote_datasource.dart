import 'package:dartz/dartz.dart';
import 'package:fluttercleanboilerplate/domain/entities/Feed.dart';

abstract class RemoteDataSource {
  Future<Feed> getTopHeadlines();
}