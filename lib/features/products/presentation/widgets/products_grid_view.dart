import 'package:flutter/material.dart';
import '../../domain/entities/product_entitiy.dart';
import 'product_item.dart';

class ProductsGridView extends StatelessWidget {
  const ProductsGridView({
    super.key,
    required this.productEntitiyList,
  });

  final List<ProductEntitiy> productEntitiyList;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        childAspectRatio: 0.75,
        crossAxisSpacing: 15,
        mainAxisSpacing: 15,
      ),
      itemBuilder: (context, index) {
        return ProductItem(
          productEntitiy: productEntitiyList[index],
        );
      },
      itemCount: productEntitiyList.length,
    );
  }
}
