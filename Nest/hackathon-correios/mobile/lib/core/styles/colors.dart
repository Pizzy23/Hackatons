import 'dart:ui';

class AppColors {
  AppColors._();
  static AppColors? _instance;

  static AppColors get instance {
    _instance ??= AppColors._();
    return _instance!;
  }

  static Color get primary => const Color(0xFF006399);
  static Color get onPrimary => const Color(0xFF00416B);
  static Color get secondary => const Color(0xFFF5F3F0);
  static Color get onSecondary => const Color(0xFF3F3E3B);
  static Color get tertiary => const Color(0xFF4B6271);
}