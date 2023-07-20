import 'package:dartz/dartz.dart';

import '../../../../Core/errors/failures.dart';
import '../entites/verify_entity.dart';

abstract class BaseVerifyRepository {
  Future<Either<Failure, VerifyEntity>> fetchCode(
      {required String name, required String phone});
}
