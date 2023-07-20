import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../domain/entites/otp_entity.dart';
import '../../domain/entites/verify_entity.dart';
import '../../domain/usecase/check_otp_usecase.dart';
import '../../domain/usecase/get_verify_usecase.dart';

part 'verify_state.dart';

class VerifyCubit extends Cubit<VerifyState> {
  VerifyCubit(this.verifyUseCase, this.otpUseCase) : super(VerifyInitial());

  static VerifyCubit get(context) => BlocProvider.of(context);

  VerifyEntity? verifyData;
  final VerifyUseCase verifyUseCase;

  Future<void> fetchItemsList({required List<String> data}) async {
    emit(VerifyLoadingState());
    var result = await verifyUseCase.execute(data);
    result.fold((failure) {
      emit(VerifyErrorState(failure.errMessage));
    }, (items) {
      verifyData = items;
      emit(VerifySuccessState(items));
    });
  }

  OtpEntity? otpData;
  final OtpUseCase otpUseCase;

  Future<void> checkOtp({required List<String> data}) async {
    emit(CheckOtpLoadingState());
    var result = await otpUseCase.execute(data);
    result.fold((failure) {
      emit(CheckOtpErrorState(failure.errMessage));
    }, (items) {
      otpData = items;
      emit(CheckOtpSuccessState(items));
    });
  }
}
