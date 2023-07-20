import 'package:dartz/dartz.dart';

import '../../../../Core/errors/failures.dart';
import '../../../../Core/helpers/use_cases.dart';
import '../entites/help_entity.dart';
import '../repository/base_get_help_repository.dart';

class HelpUseCase extends UseCase<List<HelpEntity>, NoParam> {
  final BaseGetHelpRepository baseGetHelpRepository;

  HelpUseCase(this.baseGetHelpRepository);

  @override
  Future<Either<Failure, List<HelpEntity>>> execute([NoParam? param]) async {
    return await baseGetHelpRepository.fetchHelp();
  }
}
