  import 'package:flutter/material.dart';

  import 'colors.dart';

  class AppTextStyles {
    AppTextStyles._();

    static AppTextStyles? _instance;

    static AppTextStyles get instance {
      _instance ??= AppTextStyles._();
      return _instance!;
    }

    //Custom

    TextStyle get customStyle => const TextStyle(
      color: Color(0xFF716E6E),
      fontSize: 13,
      fontWeight: FontWeight.w500,
    );
    //Blue

    TextStyle get blueBigBold => TextStyle(
        color: AppColors.primary,
        fontSize: 32,
        fontWeight: FontWeight.w800
    );

    //White
    TextStyle get whiteMedium => TextStyle(
        color: AppColors.onPrimary,
        fontSize: 15,
        fontWeight: FontWeight.w500
    );

    TextStyle get whiteSemiBig => TextStyle(
        color: AppColors.onPrimary,
        fontSize: 20,
        fontWeight: FontWeight.w500
    );

    // Gray

    TextStyle get graySuperSmall=> TextStyle(
        color: AppColors.secondary,
        fontSize: 8,
        fontWeight: FontWeight.w500
    );

    TextStyle get graySmall => TextStyle(
        color: AppColors.secondary,
        fontSize: 12,
        fontWeight: FontWeight.w800
    );

    TextStyle get grayMedium => TextStyle(
        color: AppColors.secondary,
        fontSize: 12.5,
        fontWeight: FontWeight.w500
    );

    //Blue
    TextStyle get blueSmall => TextStyle(
        color: AppColors.primary,
        fontSize: 12,
        fontWeight: FontWeight.w800
    );

    TextStyle get blueMedium => TextStyle(
        color: AppColors.primary,
        fontSize: 15,
        fontWeight: FontWeight.w500
    );

    TextStyle get blueBig => TextStyle(
        color: AppColors.primary,
        fontSize: 20,
        fontWeight: FontWeight.w800
    );


  }

  extension AppTextStylesExtension on BuildContext {
    AppTextStyles get appTextStyles => AppTextStyles.instance;
  }