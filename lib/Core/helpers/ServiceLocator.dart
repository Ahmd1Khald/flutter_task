import 'package:get_it/get_it.dart';

import '../../Features/auth/data/data_sources/videos_remote_data_source.dart';
import '../../Features/auth/data/repository/videos_repository.dart';

final getIt = GetIt.instance;

void setUpServiceLocator() {
  getIt.registerSingleton<VerifyRepository>(
    VerifyRepository(
      baseVerifyRemoteDataSource: VerifyRemoteDataSource(),
    ),
  );
}
