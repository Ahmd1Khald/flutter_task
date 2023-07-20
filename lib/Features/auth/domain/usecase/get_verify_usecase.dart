import 'package:dartz/dartz.dart';

import '../../../../Core/errors/failures.dart';
import '../../../../Core/helpers/use_cases.dart';
import '../entites/verify_entity.dart';
import '../repository/base_auth_repository.dart';

class GetListTopicsUseCase extends UseCase<List<VerifyEntity>, List<String>> {
  final BaseVerifyRepository baseVideosRepository;

  GetListTopicsUseCase(this.baseVideosRepository);

  @override
  Future<Either<Failure, List<VerifyEntity>>> execute(
      List<String> param) async {
    return await baseVideosRepository.fetchCode(
        name: param[0], phone: param[1]);
  }
}
