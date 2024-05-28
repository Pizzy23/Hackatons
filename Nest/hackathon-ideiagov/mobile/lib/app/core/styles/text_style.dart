import 'package:flutter/material.dart';

import 'colors.dart';

class AppTextStyles {
  AppTextStyles._();

  static AppTextStyles? _instance;

  static AppTextStyles get instance {
    _instance ??= AppTextStyles._();
    return _instance!;
  }

  //White
  TextStyle get whiteSmall => TextStyle(
      color: AppColors.onSecondary,
      fontSize: 12,
      fontWeight: FontWeight.w600
  );

  TextStyle get whiteMedium => TextStyle(
    color: AppColors.onSecondary,
    fontSize: 16,
    fontWeight: FontWeight.w400
  );

  TextStyle get whiteSemiBig => TextStyle(
      color: AppColors.onSecondary,
      fontSize: 20,
      fontWeight: FontWeight.w400
  );

  // Gray
  TextStyle get smallGray => TextStyle(
      color: AppColors.tertiary,
      fontSize: 12,
      fontWeight: FontWeight.w300
  );

  TextStyle get graySemiBig => TextStyle(
    color: AppColors.tertiary,
    fontSize: 20,
    fontWeight: FontWeight.w700
  );

  // Blue
  TextStyle get blueSmall => TextStyle(
      color: AppColors.primary,
      fontSize: 14,
      fontWeight: FontWeight.w400
  );

}

extension AppTextStylesExtension on BuildContext {
  AppTextStyles get appTextStyles => AppTextStyles.instance;
}