import 'package:flutter/material.dart';
import '../../../../core/utils/constants.dart';

class CustomShopCart extends StatelessWidget {
  const CustomShopCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const ImageIcon(
      AssetImage(
        'assets/images/icon_shopping_cart.png',
      ),
      size: 45,
      color: Constants.primaryColor,
    );
  }
}
