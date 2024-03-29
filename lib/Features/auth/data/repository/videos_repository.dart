import 'dart:core';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:flutter_task/Features/auth/domain/entites/otp_entity.dart';

import '../../../../Core/errors/failures.dart';
import '../../domain/entites/verify_entity.dart';
import '../../domain/repository/base_auth_repository.dart';
import '../data_sources/videos_remote_data_source.dart';

class VerifyRepository extends BaseVerifyRepository {
  final BaseVerifyRemoteDataSource baseVerifyRemoteDataSource;

  VerifyRepository({
    required this.baseVerifyRemoteDataSource,
  });

  @override
  Future<Either<Failure, VerifyEntity>> fetchCode(
      {required String name, required String phone}) async {
    try {
      final result = await baseVerifyRemoteDataSource.getCode(
        name: name,
        phone: phone,
      );
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

  @override
  Future<Either<Failure, OtpEntity>> checkCode({
    required String code,
    required String phone,
  }) async {
    try {
      final result = await baseVerifyRemoteDataSource.checkCode(
        code: code,
        phone: phone,
      );
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
