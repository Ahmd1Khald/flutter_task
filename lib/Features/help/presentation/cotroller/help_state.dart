part of 'help_cubit.dart';

@immutable
abstract class HelpState {}

class HelpInitial extends HelpState {}

class HelpLoadingState extends HelpState {}

class HelpSuccessState extends HelpState {
  final List<HelpEntity> helpData;
  HelpSuccessState(this.helpData);
}

class HelpErrorState extends HelpState {
  final String error;
  HelpErrorState(this.error);
}
