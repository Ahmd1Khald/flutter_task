import 'package:flutter_task/Features/auth/data/model/verify_model.dart';

import '../../../../Core/constance/const_api.dart';
import '../../../../Core/errors/failures.dart';
import '../../../../Core/helpers/dio_helper.dart';
import '../../domain/entites/verify_entity.dart';

abstract class BaseVerifyRemoteDataSource {
  Future<List<VerifyEntity>> getCode(
      {required String name, required String phone});
}

class VerifyRemoteDataSource extends BaseVerifyRemoteDataSource {
  @override
  Future<List<VerifyEntity>> getCode({
    required String name,
    required String phone,
  }) async {
    final response = await DioHelper.getData(
      endPoint: ApiConstant.verifyPhone,
      query: {
        'phone': phone,
        'name': name,
      },
    );
    if (response.statusCode == 200) {
      print(response.data);
      final jsonData = response.data as List<dynamic>;
      List<VerifyEntity> items =
          jsonData.map((e) => VerifyModel.fromJson(e)).toList();

      return items;
    } else {
      print('error +++++++++++++++++++');
      throw ServerFailure('error datasource when fetch code');
    }
  }
}
