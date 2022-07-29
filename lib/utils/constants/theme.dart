import 'package:calculator/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class Themes {
  static final light = ThemeData(
    backgroundColor: const Color(0xFFf8f8f8),
    primaryColor: const Color(0xFFEA5165),
    shadowColor: const Color(0xFFe3e3e3),
    scaffoldBackgroundColor: const Color(0xFFFFFFFF),
    primaryColorLight: Colors.black,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      color: AppColors.backgroundColor,
      elevation: 0.0,
    ),
    textTheme: TextTheme(
      headline3: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      caption: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.grey[700],
        fontSize: 18.0,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.yellowColor),
  );
  static final dark = ThemeData(
    backgroundColor: const Color(0xFF303030),
    primaryColor: const Color(0xFFEA5165),
    shadowColor: const Color(0xFF212121),
    scaffoldBackgroundColor: const Color(0xFF424242),
    primaryColorLight: Colors.white,
    brightness: Brightness.dark,
    appBarTheme: const AppBarTheme(
      color: AppColors.backgroundColor,
      elevation: 0.0,
    ),
    textTheme: TextTheme(
      headline3: const TextStyle(
        fontWeight: FontWeight.bold,
      ),
      caption: TextStyle(
        fontWeight: FontWeight.w500,
        color: Colors.grey[700],
        fontSize: 18.0,
      ),
    ),
    colorScheme: ColorScheme.fromSwatch().copyWith(secondary: AppColors.yellowColor),
  );
}
