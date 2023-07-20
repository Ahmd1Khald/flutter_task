import 'package:dio/dio.dart';
import 'package:flutter_task/Features/auth/data/model/verify_model.dart';

import '../../../../Core/constance/const_api.dart';
import '../../../../Core/errors/failures.dart';
import '../../domain/entites/verify_entity.dart';

abstract class BaseVerifyRemoteDataSource {
  Future<VerifyEntity> getCode({required String name, required String phone});
}

class VerifyRemoteDataSource extends BaseVerifyRemoteDataSource {
  @override
  Future<VerifyEntity> getCode({
    required String name,
    required String phone,
  }) async {
    final dio = Dio();
    // final response = await DioHelper.postData(
    //   endPoint: ApiConstant.verifyPhone,
    //   data: {
    //     'phone': phone,
    //     'name': name,
    //   },
    // );
    print("${ApiConstant.baseUrl}${ApiConstant.verifyPhone}");
    final response = await dio.post(
      "${ApiConstant.baseUrl}${ApiConstant.verifyPhone}",
      data: {
        'phone': phone,
        'name': name,
      },
    );
    if (response.statusCode == 200) {
      print(response.data);
      //final jsonData = response.data as List<dynamic>;
      VerifyEntity items = VerifyModel.fromJson(response.data);

      return items;
    } else {
      print('error +++++++++++++++++++');
      throw ServerFailure('error datasource when fetch code');
    }
  }
}
