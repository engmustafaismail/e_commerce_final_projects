import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xffFD7729);
  static const Color secondry = Color(0xffFD5E25);
  static const Color grayTitle = Color.fromARGB(255, 132, 130, 129);
  static const Color black = Colors.black;
  static const Color white = Colors.white;
}

class AppGradientColors {
  static const Gradient gradientOne = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      AppColors.primary,
      AppColors.secondry,
    ],
  );
}
