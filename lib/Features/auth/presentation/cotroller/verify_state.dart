part of 'verify_cubit.dart';

@immutable
abstract class VerifyState {}

class VerifyInitial extends VerifyState {}

class VerifyLoadingState extends VerifyState {}

class VerifySuccessState extends VerifyState {
  final VerifyEntity verifyData;
  VerifySuccessState(this.verifyData);
}

class VerifyErrorState extends VerifyState {
  final String error;
  VerifyErrorState(this.error);
}
