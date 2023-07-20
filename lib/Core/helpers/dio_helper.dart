import 'package:dio/dio.dart';

import '../constance/const_api.dart';

class DioHelper {
  static late Dio dio;

  static void init() {
    dio = Dio(BaseOptions(
      baseUrl: ApiConstant.baseUrl,
      receiveDataWhenStatusError: true,
    ));
  }

  static Future<Response> postData({
    required String endPoint,
    String? token,
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
  }) async {
    return await dio.post(
      "${ApiConstant.baseUrl}$endPoint",
      data: data,
      queryParameters: query,
    );
  }

  static Future<Response> getData({
    required String endPoint,
    String? token,
    Map<String, dynamic>? data,
    Map<String, dynamic>? query,
  }) async {
    return await dio.get(
      '${ApiConstant.baseUrl}$endPoint',
      queryParameters: query,
    );
  }
}
