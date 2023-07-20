import '../../domain/entites/products_entity.dart';

class ProductsModel extends ProductsEntity {
  const ProductsModel({
    required super.id,
    required super.company,
    required super.name,
    required super.type,
    required super.price,
    required super.image,
    required super.description,
  });

  factory ProductsModel.fromJson(Map<String, dynamic> json) {
    return ProductsModel(
      id: json['id'],
      company: json['company'],
      name: json['name'],
      type: json['type'],
      price: json['price'],
      image: json['image'],
      description: json['description'],
    );
  }
}
