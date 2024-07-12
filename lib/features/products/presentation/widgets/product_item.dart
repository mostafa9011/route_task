import 'package:flutter/material.dart';
import 'package:route_task/features/products/presentation/widgets/item_desc.dart';
import 'custom_item_image.dart';

class ProductItem extends StatelessWidget {
  const ProductItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(22),
        color: Colors.red,
      ),
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomItemImage(),
          ItemDesc(),
        ],
      ),
    );
  }
}
