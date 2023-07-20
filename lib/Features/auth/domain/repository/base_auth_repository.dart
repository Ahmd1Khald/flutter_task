import 'package:dartz/dartz.dart';

import '../../../../Core/errors/failures.dart';
import '../entites/verify_entity.dart';

abstract class BaseVideosRepository {
  Future<Either<Failure, List<VerifyEntity>>> fetchCode();
}
