import 'package:route_task/core/utils/services/dio_api_service.dart';
import 'package:route_task/features/products/data/models/product_model/product_model.dart';
import '../../../domain/entities/product_entitiy.dart';

class AllProductsRemoteDataSource {
  DioApiService dioApiService;
  AllProductsRemoteDataSource({
    required this.dioApiService,
  });
  Future<List<ProductEntitiy>> getAllProducts() async {
    var data = await dioApiService.get(endPoint: '/products');
    List<dynamic> products = data['products'];
    List<ProductEntitiy> productList = [];
    for (var element in products) {
      var productModel = ProductModel.fromJson(element);
      productList.add(productModel);
    }
    return productList;
  }
}
