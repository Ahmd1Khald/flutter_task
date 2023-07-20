import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meta/meta.dart';

import '../../domain/entites/products_entity.dart';
import '../../domain/usecase/get_products_usecase.dart';

part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(
    this.productsUseCase,
  ) : super(ProductsInitial());

  static ProductsCubit get(context) => BlocProvider.of(context);

  List<ProductsEntity>? productsData;
  final ProductsUseCase productsUseCase;

  Future<void> fetchProductsList() async {
    emit(ProductsLoadingState());
    var result = await productsUseCase.execute();
    result.fold((failure) {
      emit(ProductsErrorState(failure.errMessage));
    }, (items) {
      productsData = items;
      emit(ProductsSuccessState(items));
    });
  }
}
