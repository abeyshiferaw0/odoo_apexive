import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppTheme {
  /// The light theme definition
  static ThemeData lightTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      textTheme: AppTextStyles.getAppTextTheme(context),
      brightness: Brightness.light,
      colorScheme: AppColors.lightColorScheme,
      scaffoldBackgroundColor: Colors.transparent,
    );
  }

  /// The dark theme definition
  static ThemeData darkTheme(BuildContext context) {
    return ThemeData(
      useMaterial3: true,
      textTheme: AppTextStyles.getAppTextTheme(context),
      brightness: Brightness.dark,
      colorScheme: AppColors.darkColorScheme,
      scaffoldBackgroundColor: Colors.transparent,
    );
  }

  /// Returns the color scheme for the current theme.
  static ColorScheme colorScheme(BuildContext context) {
    final brightness = Theme.of(context).brightness;
    return brightness == Brightness.light
        ? AppColors.lightColorScheme
        : AppColors.darkColorScheme;
  }

  /// Returns the text theme for the current theme.
  static TextTheme textTheme(BuildContext context) {
    return AppTextStyles.getAppTextTheme(context);
  }
}
