import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task/core/utils/server_locator.dart';
import 'package:route_task/features/products/domain/usecases/get_all_products_use_case.dart';
import 'package:route_task/features/products/presentation/cubit/products_cubit.dart';
import 'package:route_task/features/products/presentation/widgets/all_poducts_builder.dart';
import '../widgets/custom_shop_cart.dart';
import '../widgets/custom_text_feild.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ProductsCubit(
        getIt.get<GetAllProductsUseCase>(),
      )..getAllProducts(),
      child: const Padding(
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
            AllPoductsBuilder(),
            // SizedBox(height: 28),
          ],
        ),
      ),
    );
  }
}
