import 'dart:core';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../../../Core/errors/failures.dart';
import '../../domain/entites/products_entity.dart';
import '../../domain/repository/base_get_products_repository.dart';
import '../data_sources/get_products_remote_data_source.dart';

class GetProductsRepository extends BaseGetProductsRepository {
  final BaseProductsRemoteDataSource baseProductsRemoteDataSource;

  GetProductsRepository({
    required this.baseProductsRemoteDataSource,
  });

  @override
  Future<Either<Failure, List<ProductsEntity>>> fetchProducts() async {
    try {
      final result = await baseProductsRemoteDataSource.fetchProductsData();
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
