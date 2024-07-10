import 'package:flutter/material.dart';
import '../constants.dart';

class AppThemeManager {
  static ThemeData lighTheme = ThemeData(
    primaryColor: Constants.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    bottomNavigationBarTheme: const BottomNavigationBarThemeData(
      type: BottomNavigationBarType.fixed,
      backgroundColor: Color(0xFF004182),
      showUnselectedLabels: false,
      showSelectedLabels: false,
    ),
  );
  static ThemeData darkTheme = ThemeData();
}
