import 'package:dartz/dartz.dart';
import 'package:route_task/core/utils/errors/failure.dart';
import 'package:route_task/features/products/domain/entities/product_entitiy.dart';

abstract class AllProductsRepo {
  Future<Either<Failure, List<ProductEntitiy>>> getAllProducts();
}
