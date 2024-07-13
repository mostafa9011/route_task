import 'package:flutter/material.dart';
import 'package:route_task/core/utils/constants.dart';
import 'package:route_task/features/products/domain/entities/product_entitiy.dart';
import '../../../../core/utils/styles/text_styles.dart';

class ItemDesc extends StatelessWidget {
  const ItemDesc({super.key, required this.productEntitiy});
  final ProductEntitiy productEntitiy;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            productEntitiy.productTitle,
            style: TextStyles.textStyle14,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            productEntitiy.productDesc,
            style: TextStyles.textStyle14,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: 7),
          Row(
            children: [
              Text(
                'EGP ${getFormatedPriceAfterdiscount(
                  productEntitiy.productPrice,
                  productEntitiy.productDiscountPercentage,
                )}',
                style: TextStyles.textStyle14,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(width: 12),
              Text(
                '${productEntitiy.productPrice} EGP',
                style: TextStyles.textStyle11,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          // SizedBox(height: 3),
          Row(
            children: [
              Text(
                'Review (${productEntitiy.productRating}) ',
                style: TextStyles.textStyle14,
                overflow: TextOverflow.ellipsis,
              ),
              const Icon(
                Icons.star,
                color: Color(0xffFFD700),
              ),
              const Spacer(),
              const Icon(
                Icons.add_circle,
                color: Constants.primaryColor,
                size: 44,
              ),
            ],
          ),
        ],
      ),
    );
  }
}

String getFormatedPriceAfterdiscount(num price, num discount) {
  num discountValue = price * discount / 100;
  num result = price - discountValue;

  return result.toStringAsFixed(1);
}
