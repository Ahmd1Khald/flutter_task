import 'package:flutter_task/Features/auth/domain/entites/verify_entity.dart';

class VerifyModel extends VerifyEntity {
  const VerifyModel({
    required super.status,
    required super.message,
    required super.code,
  });

  factory VerifyModel.fromJson(Map<String, dynamic> json) {
    return VerifyModel(
      status: json['status'],
      message: json['message'],
      code: json['code'],
    );
  }
}
