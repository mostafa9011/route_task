import 'package:flutter/material.dart';
import '../../../../core/utils/styles/text_styles.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Home Body',
        style: TextStyles.textStyle14,
      ),
    );
  }
}
