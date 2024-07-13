import 'package:flutter/material.dart';
import 'package:route_task/core/utils/constants.dart';
import 'package:route_task/features/products/domain/entities/product_entitiy.dart';
import 'package:route_task/features/products/presentation/widgets/item_desc.dart';
import 'custom_item_image.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
    required this.productEntitiy,
  });

  final ProductEntitiy productEntitiy;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        border: Border.all(color: Constants.primaryColor),
        color: Colors.transparent,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomItemImage(
            productImage: productEntitiy.productThumbnail,
          ),
          ItemDesc(
            productEntitiy: productEntitiy,
          ),
        ],
      ),
    );
  }
}
