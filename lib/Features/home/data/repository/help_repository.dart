import 'dart:core';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_task/Features/help/domain/entites/help_entity.dart';

import '../../../../Core/errors/failures.dart';
import '../../domain/repository/base_get_help_repository.dart';
import '../data_sources/get_help_remote_data_source.dart';

class GetHelpRepository extends BaseGetHelpRepository {
  final BaseHelpRemoteDataSource baseHelpRemoteDataSource;

  GetHelpRepository({
    required this.baseHelpRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<HelpEntity>>> fetchHelp() async {
    try {
      final result = await baseHelpRemoteDataSource.fetchHelpData();
      //print(result);
      return Right(result);
    } on Exception catch (e) {
      if (e is DioError) {
        print(e);
        return left(ServerFailure.fromDioError(e));
      }
      return left(ServerFailure(e.toString()));
    }
  }
}
