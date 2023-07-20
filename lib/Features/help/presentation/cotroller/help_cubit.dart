import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../domain/entites/help_entity.dart';
import '../../domain/usecase/get_verify_usecase.dart';

part 'help_state.dart';

class HelpCubit extends Cubit<HelpState> {
  HelpCubit(
    this.helpUseCase,
  ) : super(HelpInitial());

  static HelpCubit get(context) => BlocProvider.of(context);

  List<HelpEntity>? helpData;
  final HelpUseCase helpUseCase;

  Future<void> fetchHelpsList() async {
    emit(HelpLoadingState());
    var result = await helpUseCase.execute();
    result.fold((failure) {
      emit(HelpErrorState(failure.errMessage));
    }, (items) {
      helpData = items;
      emit(HelpSuccessState(items));
    });
  }
}
