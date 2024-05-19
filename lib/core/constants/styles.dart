import 'package:fast_food/core/constants/enums.dart';
import 'package:flutter/material.dart';

class AppStyles {
  static TextStyle textStyle(
    double size,
    TextFontWeight weight, {
    Color color = Colors.black,
    double? height,
    TextDecoration? decoration,
  }) {
    final FontWeight fontWeight;
    switch (weight) {
      case TextFontWeight.normal:
        fontWeight = FontWeight.w400;
        break;
      case TextFontWeight.medium:
        fontWeight = FontWeight.w500;
        break;
      case TextFontWeight.semibold:
        fontWeight = FontWeight.w600;
        break;
      case TextFontWeight.bold:
        fontWeight = FontWeight.w700;
        break;
    }
    return TextStyle(
      fontSize: size,
      fontWeight: fontWeight,
      color: color,
      height: height,
      decoration: decoration,
    );
  }
}
