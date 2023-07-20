part of 'products_cubit.dart';

@immutable
abstract class ProductsState {}

class ProductsInitial extends ProductsState {}

class ProductsLoadingState extends ProductsState {}

class ProductsSuccessState extends ProductsState {
  final List<ProductsEntity> productsData;
  ProductsSuccessState(this.productsData);
}

class ProductsErrorState extends ProductsState {
  final String error;
  ProductsErrorState(this.error);
}
