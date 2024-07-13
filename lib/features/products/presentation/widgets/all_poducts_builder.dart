import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:route_task/core/utils/styles/text_styles.dart';
import 'package:route_task/features/products/presentation/cubit/products_cubit.dart';
import 'custom_shimmer_loading.dart';
import 'products_grid_view.dart';

class AllPoductsBuilder extends StatelessWidget {
  const AllPoductsBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ProductsCubit, ProductsState>(
      builder: (context, state) {
        if (state is ProductsFailure) {
          return Center(
            child: Text(
              state.message,
              style: TextStyles.textStyle16,
            ),
          );
        }
        if (state is ProductsSuccess) {
          return Expanded(
            child: ProductsGridView(
              productEntitiyList: state.productList,
            ),
          );
        }
        return const CustomShimmerLoading();
      },
    );
  }
}
