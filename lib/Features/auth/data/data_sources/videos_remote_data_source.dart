import 'package:flutter_task/Features/auth/data/model/verify_model.dart';

import '../../../../Core/constance/const_api.dart';
import '../../../../Core/errors/failures.dart';
import '../../../../Core/helpers/dio_helper.dart';
import '../../domain/entites/otp_entity.dart';
import '../../domain/entites/verify_entity.dart';
import '../model/otp_model/otp_model.dart';

abstract class BaseVerifyRemoteDataSource {
  Future<VerifyEntity> getCode({required String name, required String phone});
  Future<OtpEntity> checkCode({required String code, required String phone});
}

class VerifyRemoteDataSource extends BaseVerifyRemoteDataSource {
  @override
  Future<VerifyEntity> getCode({
    required String name,
    required String phone,
  }) async {
    final response = await DioHelper.postData(
      endPoint: ApiConstant.verifyPhone,
      data: {
        'phone': phone,
        'name': name,
      },
    );
    if (response.statusCode == 200) {
      print(response.data);
      VerifyEntity items = VerifyModel.fromJson(response.data);

      return items;
    } else {
      print('error +++++++++++++++++++');
      throw ServerFailure('error datasource when fetch code');
    }
  }

  @override
  Future<OtpEntity> checkCode(
      {required String code, required String phone}) async {
    final response = await DioHelper.postData(
      endPoint: ApiConstant.code,
      data: {
        'phone': phone,
        'code': code,
      },
    );
    if (response.statusCode == 200) {
      print(response.data);
      OtpEntity items = OtpModel.fromJson(response.data);

      return items;
    } else {
      print('error +++++++++++++++++++');
      throw ServerFailure('error datasource when fetch code');
    }
  }
}
