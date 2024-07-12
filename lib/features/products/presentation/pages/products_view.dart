import 'package:flutter/material.dart';
import '../widgets/custom_shop_cart.dart';
import '../widgets/custom_text_feild.dart';
import '../widgets/products_grid_view.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(height: 10),
          ImageIcon(
            AssetImage(
              'assets/images/route_icon.png',
            ),
            size: 66,
          ),
          Row(
            children: [
              Expanded(child: CustomTextFeild()),
              SizedBox(width: 16),
              CustomShopCart(),
            ],
          ),
          SizedBox(height: 28),
          Expanded(
            child: ProductsGridView(),
          )
        ],
      ),
    );
  }
}
