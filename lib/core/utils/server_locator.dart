import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:route_task/core/utils/services/dio_api_service.dart';
import 'package:route_task/features/products/data/datasources/remote_data_source/all_products_remote_data_source.dart';
import 'package:route_task/features/products/data/repositories/all_products_repo_imp.dart';
import '../../features/products/domain/usecases/get_all_products_use_case.dart';

final getIt = GetIt.instance;
void setupServerLocator() {
  getIt.registerSingleton<DioApiService>(
    DioApiService(
      Dio(),
    ),
  );
  getIt.registerSingleton<GetAllProductsUseCase>(
    GetAllProductsUseCase(
      allProductsRepo: AllProductsRepoImp(
        allProductsRemoteDataSource: AllProductsRemoteDataSource(
          dioApiService: getIt.get<DioApiService>(),
        ),
      ),
    ),
  );
}
