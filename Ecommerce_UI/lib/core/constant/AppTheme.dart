import 'package:finalflutterapp/core/constant/color.dart';
import 'package:flutter/material.dart';

ThemeData themeEnglish = ThemeData(
  useMaterial3: true,
  textTheme: const TextTheme(
    // Headline Large Text Styles
    headlineLarge: TextStyle(
      fontFamily: "PlayfairDisplay",
      fontWeight: FontWeight.bold,
      fontSize: 26,
      color: AppColor.black,
    ),
    // Headline Medium Text Styles
    headlineMedium: TextStyle(
      fontFamily: "PlayfairDisplay",
      fontWeight: FontWeight.bold,
      fontSize: 22,
      color: AppColor.black,
    ),
    // Headline Small Text Styles
    headlineSmall: TextStyle(
      fontFamily: "PlayfairDisplay",
      fontWeight: FontWeight.bold,
      fontSize: 14,
      color: AppColor.black,
    ),

    // Body Large Text Styles
    bodyLarge: TextStyle(
      height: 2,
      fontFamily: "PlayfairDisplay",
      color: AppColor.gray,
      fontWeight: FontWeight.bold,
      fontSize: 26,
    ),
    // Body Medium Text Styles
    bodyMedium: TextStyle(
      height: 2,
      fontFamily: "PlayfairDisplay",
      color: AppColor.gray,
      fontWeight: FontWeight.bold,
      fontSize: 22,
    ),
    // Body Small Text Styles
    bodySmall: TextStyle(
      height: 2,
      fontFamily: "PlayfairDisplay",
      color: AppColor.gray,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
);

ThemeData themeArabic = ThemeData(
  useMaterial3: true,
  // Headline Large Text Styles
  textTheme: const TextTheme(
    // Head Text Styles
    headlineLarge: TextStyle(
      fontFamily: "Cairo",
      fontWeight: FontWeight.bold,
      fontSize: 26,
      color: AppColor.black,
      // Headline Medium Text Styles
    ),
    headlineMedium: TextStyle(
      fontFamily: "Cairo",
      fontWeight: FontWeight.bold,
      fontSize: 22,
      color: AppColor.black,
    ),
    // Headline Small Text Styles
    headlineSmall: TextStyle(
      fontFamily: "Cairo",
      fontWeight: FontWeight.bold,
      fontSize: 14,
      color: AppColor.black,
    ),

    // Body Large Text Styles
    bodyLarge: TextStyle(
      fontFamily: "Cairo",
      height: 2,
      color: AppColor.gray,
      fontWeight: FontWeight.bold,
      fontSize: 26,
    ),
    bodyMedium: TextStyle(
      // Body Medium Text Styles
      height: 2,
      fontFamily: "Cairo",
      color: AppColor.gray,
      fontWeight: FontWeight.bold,
      fontSize: 22,
    ),
    bodySmall: TextStyle(
      height: 2,
      // Body Small Text Styles
      fontFamily: "Cairo",
      color: AppColor.gray,
      fontWeight: FontWeight.bold,
      fontSize: 14,
    ),
  ),
  colorScheme: ColorScheme.fromSeed(seedColor: Colors.blue),
);
