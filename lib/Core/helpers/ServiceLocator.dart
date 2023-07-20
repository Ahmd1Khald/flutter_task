import 'package:flutter_task/Features/help/data/data_sources/get_help_remote_data_source.dart';
import 'package:get_it/get_it.dart';

import '../../Features/auth/data/data_sources/videos_remote_data_source.dart';
import '../../Features/auth/data/repository/videos_repository.dart';
import '../../Features/help/data/repository/help_repository.dart';
import '../../Features/home/data/data_sources/get_products_remote_data_source.dart';
import '../../Features/home/data/repository/help_repository.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<VerifyRepository>(
    VerifyRepository(
      baseVerifyRemoteDataSource: VerifyRemoteDataSource(),
    ),
  );

  getIt.registerSingleton<GetHelpRepository>(
    GetHelpRepository(
      baseHelpRemoteDataSource: HelpRemoteDataSource(),
    ),
  );

  getIt.registerSingleton<GetProductsRepository>(
    GetProductsRepository(
      baseProductsRemoteDataSource: ProductsRemoteDataSource(),
    ),
  );
}
