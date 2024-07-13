import 'package:flutter/material.dart';
import '../../../../core/utils/constants.dart';

class CustomItemImage extends StatelessWidget {
  const CustomItemImage({
    super.key,
    required this.productImage,
  });
  final String productImage;

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context).size;

    return Stack(
      children: [
        Container(
          height: mediaQuery.height * 0.15,
          width: mediaQuery.width,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(22),
              topRight: Radius.circular(22),
            ),
            color: Colors.grey,
            image: DecorationImage(
              image: NetworkImage(productImage),
              fit: BoxFit.contain,
            ),
          ),
        ),
        const Positioned(
          right: 10,
          top: 10,
          child: CircleAvatar(
            backgroundColor: Colors.white,
            child: ImageIcon(
              AssetImage('assets/images/favorite_icn.png'),
              color: Constants.primaryColor,
            ),
          ),
        ),
      ],
    );
  }
}
