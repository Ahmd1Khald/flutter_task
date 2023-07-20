import 'package:dartz/dartz.dart';

import '../../../../Core/errors/failures.dart';
import '../entites/products_entity.dart';

abstract class BaseGetProductsRepository {
  Future<Either<Failure, List<ProductsEntity>>> fetchProducts();
}
