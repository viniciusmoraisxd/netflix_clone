import 'package:flutter/material.dart';

import 'app_color.dart';

class AppTheme {
  static ThemeData get nfTheme => ThemeData(
  
      backgroundColor: AppColors.black,
      useMaterial3: false,
      fontFamily: 'NetflixSans',
      primarySwatch: AppColors.primaryCustomColor,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          minimumSize: const Size.fromHeight(52),
          textStyle: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
          ),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(30),
          ),
          primary: AppColors.primaryColor,
        ),
      ),
      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          minimumSize: const Size.fromHeight(64),
          textStyle: const TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w400,
          ),
          elevation: 0,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(6),
          ),
          side: const BorderSide(
            color: AppColors.white,
          ),
          primary: AppColors.white
        ),
      ));
}
