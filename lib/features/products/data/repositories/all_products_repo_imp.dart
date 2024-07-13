// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import 'package:route_task/core/utils/errors/failure.dart';
import 'package:route_task/core/utils/errors/server_failure.dart';
import 'package:route_task/features/products/data/datasources/remote_data_source/all_products_remote_data_source.dart';
import 'package:route_task/features/products/domain/entities/product_entitiy.dart';

import '../../domain/repositories/all_products_repo.dart';

class AllProductsRepoImp extends AllProductsRepo {
  AllProductsRemoteDataSource allProductsRemoteDataSource;
  AllProductsRepoImp({
    required this.allProductsRemoteDataSource,
  });
  @override
  Future<Either<Failure, List<ProductEntitiy>>> getAllProducts() async {
    try {
      List<ProductEntitiy> allPeoducts =
          await allProductsRemoteDataSource.getAllProducts();
      return Right(allPeoducts);
    } catch (e) {
      if (e is DioException) {
        return Left(ServerFailure.fromDioException(e));
      }
      return Left(ServerFailure(message: e.toString()));
    }
  }
}
