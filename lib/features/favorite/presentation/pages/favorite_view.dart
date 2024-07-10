import 'package:flutter/material.dart';
import '../../../../core/utils/styles/text_styles.dart';

class FavoriteView extends StatelessWidget {
  const FavoriteView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Favorite Body',
        style: TextStyles.textStyle14,
      ),
    );
  }
}
