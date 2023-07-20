import 'package:dartz/dartz.dart';

import '../../../../Core/errors/failures.dart';
import '../entites/help_entity.dart';

abstract class BaseGetHelpRepository {
  Future<Either<Failure, HelpEntity>> fetchHelp();
}
