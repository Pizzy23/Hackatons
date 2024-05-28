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
    color: AppColors.secondary,
    fontSize: 14,
    fontWeight: FontWeight.w500,
  );

  //Gray
  TextStyle get smallGray => TextStyle(
      color: AppColors.onSecondary,
      fontSize: 12,
      fontWeight: FontWeight.w300
  );

  TextStyle get graySemiBig=> TextStyle(
      color: AppColors.primary,
      fontSize: 28.83,
      fontWeight: FontWeight.w700
  );

  //Blue

  TextStyle get blueSemiBig=> TextStyle(
      color: AppColors.onPrimary,
      fontSize: 28.83,
      fontWeight: FontWeight.w700
  );

}

extension AppTextStylesExtension on BuildContext {
  AppTextStyles get appTextStyles => AppTextStyles.instance;
}