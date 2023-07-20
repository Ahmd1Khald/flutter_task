import 'package:equatable/equatable.dart';

class VerifyEntity extends Equatable {
  final int status;
  final String message;
  final String code;

  const VerifyEntity({
    required this.status,
    required this.message,
    required this.code,
  });

  @override
  List<Object?> get props => [status, message, code];
}
