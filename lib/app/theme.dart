import 'package:flutter/material.dart';

import '../core/colors.dart';

abstract final class OSTheme {
  OSTheme._();

  static ThemeData get light {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: OSColors.background,
      colorScheme: ColorScheme.fromSeed(
        seedColor: OSColors.blue,
        brightness: Brightness.light,
      ).copyWith(
        primary: OSColors.blue,
        secondary: OSColors.navy,
        surface: OSColors.white,
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(fontFamily: 'Inter'),
        bodyMedium: TextStyle(fontFamily: 'Inter'),
        titleLarge: TextStyle(fontFamily: 'Inter'),
        headlineMedium: TextStyle(fontFamily: 'Inter'),
        displayLarge: TextStyle(fontFamily: 'Inter'),
      ),
    );
  }
}
