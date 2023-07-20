import 'package:flutter_task/Features/help/data/model/help_model.dart';

import '../../../../Core/constance/const_api.dart';
import '../../../../Core/errors/failures.dart';
import '../../../../Core/helpers/dio_helper.dart';
import '../../domain/entites/help_entity.dart';

abstract class BaseHelpRemoteDataSource {
  Future<List<HelpEntity>> fetchHelpData();
}

class HelpRemoteDataSource extends BaseHelpRemoteDataSource {
  @override
  Future<List<HelpEntity>> fetchHelpData() async {
    final response = await DioHelper.getData(
      endPoint: ApiConstant.getHelp,
    );
    if (response.statusCode == 200) {
      List<HelpEntity> items = [];
      for (var item in response.data['help']) {
        items.add(HelpModel.fromJson(item));
      }
      return items;
    } else {
      print('error +++++++++++++++++++');
      throw ServerFailure('error datasource when fetch code');
    }
  }
}
