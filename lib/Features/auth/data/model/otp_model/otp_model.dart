import '../../../domain/entites/otp_entity.dart';
import 'account_model.dart';

class OtpModel extends OtpEntity {
  const OtpModel({
    required super.status,
    required super.message,
    required super.account,
  });

  factory OtpModel.fromJson(Map<String, dynamic> json) {
    return OtpModel(
      status: json['status'],
      message: json['message'],
      account: AccountModel?.fromJson(json['account'] ??
              {
                'id': 0,
                'name': 'no name',
                'phone': 'no phone',
              }) ??
          NoAccountModel.fromJson(json),
    );
  }
}

class NoAccountModel extends AccountEntity {
  const NoAccountModel({
    required super.id,
    required super.name,
    required super.phone,
  });

  factory NoAccountModel.fromJson(Map<String, dynamic> json) {
    return const NoAccountModel(
      id: 0,
      name: 'no name',
      phone: 'no phone',
    );
  }
}
