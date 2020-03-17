import 'package:dartz/dartz.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:fluttercleanboilerplate/core/error/failures.dart';
import 'package:fluttercleanboilerplate/core/usecase/usecase.dart';
import 'package:fluttercleanboilerplate/features/feeds/domain/entities/Feed.dart';
import 'package:fluttercleanboilerplate/features/feeds/domain/repositories/feeds_repository.dart';

class GetHeadlines extends UseCase<Feed, Params> {
  final FeedsRepository feedsRepository;

  GetHeadlines(this.feedsRepository);

  //Since dart supports callable classes, we name the executable function as 'call' and hence we can trigger
  //the use case as getHeadlines();
  @override
  Future<Either<Failure, Feed>> call(Params params) async {
    return await feedsRepository.getTopHeadlines();
  }
}

class Params extends Equatable {
  final int number;

  Params({@required this.number});

  @override
  List<Object> get props => null;
}