import '../../domain/entites/help_entity.dart';

class HelpModel extends HelpEntity {
  const HelpModel({
    required super.id,
    required super.question,
    required super.answer,
  });

  factory HelpModel.fromJson(Map<String, dynamic> json) {
    return HelpModel(
      id: json['id'],
      question: json['question'],
      answer: json['answer'],
    );
  }
}
