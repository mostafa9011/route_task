import 'package:dartz/dartz.dart';
import 'package:route_task/features/products/domain/repositories/all_products_repo.dart';
import '../../../../core/utils/errors/failure.dart';
import '../entities/product_entitiy.dart';

class GetAllProductsUseCase {
  final AllProductsRepo allProductsRepo;

  GetAllProductsUseCase({required this.allProductsRepo});

  Future<Either<Failure, List<ProductEntitiy>>> execute() {
    return allProductsRepo.getAllProducts();
  }
}
