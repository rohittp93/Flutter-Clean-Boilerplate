import 'package:dartz/dartz.dart';
import 'package:fluttercleanboilerplate/core/error/failures.dart';
import 'package:fluttercleanboilerplate/domain/entities/Feed.dart';

abstract class FeedsRepository {
  Future<Either<Failure, Feed>> getTopHeadlines();
}