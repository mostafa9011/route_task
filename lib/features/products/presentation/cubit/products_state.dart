part of 'products_cubit.dart';

abstract class ProductsState extends Equatable {
  const ProductsState();

  @override
  List<Object> get props => [];
}

class ProductsInitial extends ProductsState {}

class ProductsLoading extends ProductsState {}

class ProductsSuccess extends ProductsState {
  final List<ProductEntitiy> productList;
  const ProductsSuccess(this.productList);
}

class ProductsFailure extends ProductsState {
  final String message;

  const ProductsFailure(this.message);
}
