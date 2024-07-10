import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:route_task/core/utils/routes.dart';
import 'package:route_task/core/utils/theme/app_theme_manager.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Route Task',
      debugShowCheckedModeBanner: false,
      theme: AppThemeManager.lighTheme,
      onGenerateRoute: Routes.onGenerate,
      builder: EasyLoading.init(),
    );
  }
}
