import 'package:dartz/dartz.dart';
import 'package:fluttercleanboilerplate/core/error/failures.dart';
import 'package:fluttercleanboilerplate/domain/entities/Feed.dart';

abstract class UseCase<Type, Params> {
  Future<Either<Failure, Feed>> call(Params params);
}