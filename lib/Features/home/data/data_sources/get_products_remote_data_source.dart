import '../../../../Core/constance/const_api.dart';
import '../../../../Core/errors/failures.dart';
import '../../../../Core/helpers/dio_helper.dart';
import '../../domain/entites/products_entity.dart';
import '../model/products_model.dart';

abstract class BaseProductsRemoteDataSource {
  Future<List<ProductsEntity>> fetchProductsData();
}

class ProductsRemoteDataSource extends BaseProductsRemoteDataSource {
  @override
  Future<List<ProductsEntity>> fetchProductsData() async {
    final response = await DioHelper.getData(
      endPoint: ApiConstant.getProducts,
    );
    if (response.statusCode == 200) {
      List<ProductsEntity> items = [];
      for (var item in response.data['products']) {
        print(item);
        items.add(ProductsModel.fromJson(item));
      }
      return items;
    } else {
      print('error +++++++++++++++++++');
      throw ServerFailure('error datasource when fetch code');
    }
  }
}
