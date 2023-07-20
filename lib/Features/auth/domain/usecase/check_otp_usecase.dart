import 'package:dartz/dartz.dart';

import '../../../../Core/errors/failures.dart';
import '../../../../Core/helpers/use_cases.dart';
import '../entites/otp_entity.dart';
import '../repository/base_auth_repository.dart';

class VerifyUseCase extends UseCase<OtpEntity, List<String>> {
  final BaseVerifyRepository baseVerifyRepository;

  VerifyUseCase(this.baseVerifyRepository);

  @override
  Future<Either<Failure, OtpEntity>> execute(List<String> param) async {
    return await baseVerifyRepository.checkCode(
        code: param[0], phone: param[1]);
  }
}
