import 'package:dartz/dartz.dart';

import '../../../../Core/errors/failures.dart';
import '../../../../Core/helpers/use_cases.dart';
import '../entites/help_entity.dart';
import '../repository/base_get_help_repository.dart';

class ProductsUseCase extends UseCase<List<ProductsEntity>, NoParam> {
  final BaseGetProductsRepository baseGetProductsRepository;

  ProductsUseCase(this.baseGetProductsRepository);

  @override
  Future<Either<Failure, List<ProductsEntity>>> execute(
      [NoParam? param]) async {
    return await baseGetProductsRepository.fetchProducts();
  }
}
