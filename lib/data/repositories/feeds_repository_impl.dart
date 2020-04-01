import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:fluttercleanboilerplate/core/error/exceptions.dart';
import 'package:fluttercleanboilerplate/core/error/failures.dart';
import 'package:fluttercleanboilerplate/core/platform/network_info.dart';
import 'package:fluttercleanboilerplate/data/data_sources/local_datasource.dart';
import 'package:fluttercleanboilerplate/data/data_sources/remote_datasource.dart';
import 'package:fluttercleanboilerplate/domain/entities/Feed.dart';
import 'package:fluttercleanboilerplate/domain/repositories/feeds_repository.dart';

class FeedsRepositoryImplementation implements FeedsRepository {
  final LocalDataSource feedsLocalDataSource;
  final RemoteDataSource feedsRemoteDataSource;
  final NetworkInfo networkInfo;

  FeedsRepositoryImplementation(
      {@required this.networkInfo,
      @required this.feedsLocalDataSource,
      @required this.feedsRemoteDataSource});

  @override
  Future<Either<Failure, Feed>> getTopHeadlines() async {
    if (await networkInfo.isConnected) {
      try {
        return Right(await feedsRemoteDataSource.getTopHeadlines());
      } on ServerException {
        return Left(ServerFailure());
      }
    } else {
      return Left(NetworkFailure());
    }
  }
}