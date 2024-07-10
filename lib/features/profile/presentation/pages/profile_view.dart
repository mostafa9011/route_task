import 'package:flutter/material.dart';
import '../../../../core/utils/styles/text_styles.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        'Profile Body',
        style: TextStyles.textStyle14,
      ),
    );
  }
}
