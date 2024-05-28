import 'dart:ui';

class AppColors {
  AppColors._();
  static AppColors? _instance;

  static AppColors get instance {
    _instance ??= AppColors._();
    return _instance!;
  }

  static Color get primary => const Color(0xFF2864AE);
  static Color get onPrimary => const Color(0xFFF9F9F9);
  static Color get secondary => const Color(0xFF333030);
  static Color get onSecondary => const Color(0xFFD9D9D9);
  static Color get tertiary => const Color(0xFF4B6271);
}