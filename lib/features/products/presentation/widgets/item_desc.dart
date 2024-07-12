import 'package:flutter/material.dart';
import 'package:route_task/core/utils/constants.dart';
import '../../../../core/utils/styles/text_styles.dart';

class ItemDesc extends StatelessWidget {
  const ItemDesc({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.all(8.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Nike Air Jordon',
            style: TextStyles.textStyle14,
            overflow: TextOverflow.ellipsis,
          ),
          Text(
            'Nike shoes flexible for mostafa',
            style: TextStyles.textStyle14,
            overflow: TextOverflow.ellipsis,
          ),
          SizedBox(height: 7),
          Row(
            children: [
              Text(
                'EGP 1,000',
                style: TextStyles.textStyle14,
                overflow: TextOverflow.ellipsis,
              ),
              SizedBox(width: 12),
              Text(
                '1,300 EGP',
                style: TextStyles.textStyle11,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
          // SizedBox(height: 3),
          Row(
            children: [
              Text(
                'Review (4.5) ',
                style: TextStyles.textStyle14,
                overflow: TextOverflow.ellipsis,
              ),
              Icon(
                Icons.star,
                color: Color(0xffFFD700),
              ),
              Spacer(),
              Icon(
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
