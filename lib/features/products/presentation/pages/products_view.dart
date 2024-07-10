import 'package:flutter/material.dart';
import '../../../../core/utils/styles/text_styles.dart';

class ProductsView extends StatelessWidget {
  const ProductsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Products Body',
        style: TextStyles.textStyle14,
      ),
    );
  }
}
