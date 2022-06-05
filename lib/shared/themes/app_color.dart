import 'package:flutter/material.dart';

class AppColors {
  static MaterialColor primaryCustomColor =
      MaterialColor(0xFFE6821E, customColor);

  static Color netflixRed = const Color(0xFFe50914);
  static Color primaryColor = const Color(0xFFe50914);
  static Color bodyBackgroundColor = const Color(0xFFF3F3F3);
  static Color cardBackgroundColor = const Color.fromRGBO(0, 0, 0, 0.75);
  static Color unfocusBgColor = const Color(0xff333333);
  static Color focusBgColor = const Color(0xFF454545);
  static Color fontColorGrey = const Color(0xFF8c8c8c);



  static const Color white = Colors.white;
  static const Color black = Colors.black;
}

Map<int, Color> customColor = {
  50: const Color.fromRGBO(230, 130, 30, 0.1),
  100: const Color.fromRGBO(230, 130, 30, 0.2),
  200: const Color.fromRGBO(230, 130, 30, 0.3),
  300: const Color.fromRGBO(230, 130, 30, 0.4),
  400: const Color.fromRGBO(230, 130, 30, 0.5),
  500: const Color.fromRGBO(230, 130, 30, 0.6),
  600: const Color.fromRGBO(230, 130, 30, 0.7),
  700: const Color.fromRGBO(230, 130, 30, 0.8),
  800: const Color.fromRGBO(230, 130, 30, 0.9),
  900: const Color.fromRGBO(230, 130, 30, 1),
};
