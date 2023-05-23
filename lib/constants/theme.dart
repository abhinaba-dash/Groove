import 'package:flutter/material.dart';
import 'package:groove/constants/colors.dart';
import 'package:groove/constants/fonts.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
      elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll<Color>(Gcolors.neutral0))),
      colorScheme:
          const ColorScheme.highContrastDark(background: Gcolors.neutral50),
      textTheme: TextTheme(
        displayLarge: bold24().copyWith(color: Gcolors.neutral700),
        displayMedium: bold20().copyWith(color: Gcolors.neutral700),
        titleLarge: bold16().copyWith(color: Gcolors.neutral700),
        titleMedium: semibold14().copyWith(color: Gcolors.neutral900),
        bodyLarge: medium12().copyWith(color: Gcolors.neutral900),
        bodyMedium: medium10().copyWith(color: Gcolors.neutral900),
        labelLarge: bold12().copyWith(color: Gcolors.neutral900),
        labelMedium: bold10().copyWith(color: Gcolors.neutral900),
      ));
  static ThemeData darkTheme = ThemeData(
      elevatedButtonTheme: const ElevatedButtonThemeData(
          style: ButtonStyle(
              backgroundColor:
                  MaterialStatePropertyAll<Color>(Gcolors.neutral700))),
      colorScheme:
          const ColorScheme.highContrastDark(background: Gcolors.neutral600),
      textTheme: TextTheme(
        displayLarge: bold24().copyWith(color: Gcolors.neutral50),
        displayMedium: bold20().copyWith(color: Gcolors.neutral50),
        titleLarge: bold16().copyWith(color: Gcolors.neutral50),
        titleMedium: semibold14().copyWith(color: Gcolors.neutral0),
        bodyLarge: medium12().copyWith(color: Gcolors.neutral0),
        bodyMedium: medium10().copyWith(color: Gcolors.neutral0),
        labelLarge: bold12().copyWith(color: Gcolors.neutral0),
        labelMedium: bold10().copyWith(color: Gcolors.neutral0),
      ));
}
