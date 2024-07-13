import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task/features/products/domain/entities/product_entitiy.dart';
import 'package:route_task/features/products/domain/usecases/get_all_products_use_case.dart';
part 'products_state.dart';

class ProductsCubit extends Cubit<ProductsState> {
  ProductsCubit(this.getAllProductsUseCase) : super(ProductsInitial());
  final GetAllProductsUseCase getAllProductsUseCase;

  void getAllProducts() async {
    emit(ProductsLoading());
    var result = await getAllProductsUseCase.execute();
    result.fold(
      (failure) {
        emit(ProductsFailure(failure.message));
      },
      (products) {
        emit(ProductsSuccess(products));
      },
    );
  }
}
