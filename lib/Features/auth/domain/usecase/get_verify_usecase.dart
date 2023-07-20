import 'package:dartz/dartz.dart';

import '../../../../Core/errors/failures.dart';
import '../../../../Core/helpers/use_cases.dart';
import '../entites/verify_entity.dart';
import '../repository/base_auth_repository.dart';

class VerifyUseCase extends UseCase<VerifyEntity, List<String>> {
  final BaseVerifyRepository baseVideosRepository;

  VerifyUseCase(this.baseVideosRepository);

  @override
  Future<Either<Failure, VerifyEntity>> execute(List<String> param) async {
    return await baseVideosRepository.fetchCode(
        name: param[0], phone: param[1]);
  }
}
