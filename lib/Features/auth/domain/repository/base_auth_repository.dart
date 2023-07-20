import 'package:dartz/dartz.dart';

import '../../../../Core/errors/failures.dart';
import '../entites/otp_entity.dart';
import '../entites/verify_entity.dart';

abstract class BaseVerifyRepository {
  Future<Either<Failure, VerifyEntity>> fetchCode(
      {required String name, required String phone});
  Future<Either<Failure, OtpEntity>> checkCode(
      {required String code, required String phone});
}
