import 'package:equatable/equatable.dart';

class OtpEntity extends Equatable {
  final int status;
  final String message;
  final AccountEntity account;

  const OtpEntity({
    required this.status,
    required this.message,
    required this.account,
  });
  @override
  List<Object?> get props => [status, message, account];
}

class AccountEntity extends Equatable {
  final int? id;
  final String? name;
  final String? phone;

  const AccountEntity({
    required this.id,
    required this.name,
    required this.phone,
  });
  @override
  List<Object?> get props => [id, name, phone];
}
