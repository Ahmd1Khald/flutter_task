import 'package:dartz/dartz.dart';

import '../../../../Core/errors/failures.dart';
import '../../../../Core/helpers/use_cases.dart';
import '../entites/otp_entity.dart';
import '../repository/base_auth_repository.dart';

class OtpUseCase extends UseCase<OtpEntity, List<String>> {
  final BaseVerifyRepository baseOtpRepository;

  OtpUseCase(this.baseOtpRepository);

  @override
  Future<Either<Failure, OtpEntity>> execute(List<String> param) async {
    return await baseOtpRepository.checkCode(code: param[0], phone: param[1]);
  }
}
