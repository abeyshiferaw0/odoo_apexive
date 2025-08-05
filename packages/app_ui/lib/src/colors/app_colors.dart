import 'package:flutter/material.dart';

/// Defines the color palette for the App UI Kit.
class AppColors {
  // Light Theme Colors
  static const lightPrimary = Color(0xff6750a4);
  static const lightOnPrimary = Color(0xffffffff);
  static const lightPrimaryContainer = Color(0xffffffff);
  static const lightOnPrimaryContainer = Color(0xff000000);
  static const lightSecondary = Color(0xff625b71);
  static const lightOnSecondary = Color(0xffffffff);
  static const lightSecondaryContainer = Color(0xffffffff);
  static const lightOnSecondaryContainer = Color(0xffffffff);
  static const lightTertiary = Color(0xff7d5260);
  static const lightOnTertiary = Color(0xffffffff);
  static const lightTertiaryContainer = Color(0xffffd8e4);
  static const lightOnTertiaryContainer = Color(0xff31111d);
  static const lightError = Color(0xffb3261e);
  static const lightOnError = Color(0xffffffff);
  static const lightErrorContainer = Color(0xfff9dedc);
  static const lightOnErrorContainer = Color(0xff410e0b);
  static const lightOutline = Color(0xff79747e);
  static const lightBackground = Color(0xfffef7ff);
  static const lightOnBackground = Color(0xff1d1b20);
  static const lightSurface = Color(0xfffef7ff);
  static const lightOnSurface = Color(0xffffffff);
  static const lightSurfaceVariant = Color(0xffe7e0ec);
  static const lightOnSurfaceVariant = Color(0xff49454f);

  // Dark Theme Colors
  static const darkPrimary = Color(0xffd0bcff);
  static const darkOnPrimary = Color(0xff381e72);
  static const darkPrimaryContainer = Color(0xff4f378b);
  static const darkOnPrimaryContainer = Color(0xffeaddff);
  static const darkSecondary = Color(0xffccc2dc);
  static const darkOnSecondary = Color(0xff332d41);
  static const darkSecondaryContainer = Color(0xff4a4458);
  static const darkOnSecondaryContainer = Color(0xffe8def8);
  static const darkTertiary = Color(0xffefb8c8);
  static const darkOnTertiary = Color(0xff492532);
  static const darkTertiaryContainer = Color(0xff633b48);
  static const darkOnTertiaryContainer = Color(0xffffd8e4);
  static const darkError = Color(0xfff2b8b5);
  static const darkOnError = Color(0xff601410);
  static const darkErrorContainer = Color(0xff8c1d18);
  static const darkOnErrorContainer = Color(0xfff9dedc);
  static const darkOutline = Color(0xff938f99);
  static const darkBackground = Color(0xff141218);
  static const darkOnBackground = Color(0xffe6e0e9);
  static const darkSurface = Color(0xff141218);
  static const darkOnSurface = Color(0xffe6e0e9);
  static const darkSurfaceVariant = Color(0xff49454f);
  static const darkOnSurfaceVariant = Color(0xffcac4d0);

  // Helper function to create a color scheme from a set of colors
  static ColorScheme get lightColorScheme => const ColorScheme.light(
    primary: lightPrimary,
    onPrimary: lightOnPrimary,
    primaryContainer: lightPrimaryContainer,
    onPrimaryContainer: lightOnPrimaryContainer,
    secondary: lightSecondary,
    onSecondary: lightOnSecondary,
    secondaryContainer: lightSecondaryContainer,
    onSecondaryContainer: lightOnSecondaryContainer,
    tertiary: lightTertiary,
    onTertiary: lightOnTertiary,
    tertiaryContainer: lightTertiaryContainer,
    onTertiaryContainer: lightOnTertiaryContainer,
    error: lightError,
    onError: lightOnError,
    errorContainer: lightErrorContainer,
    onErrorContainer: lightOnErrorContainer,
    outline: lightOutline,
    background: lightBackground,
    onBackground: lightOnBackground,
    surface: lightSurface,
    onSurface: lightOnSurface,
    surfaceVariant: lightSurfaceVariant,
    onSurfaceVariant: lightOnSurfaceVariant,
  );

  static ColorScheme get darkColorScheme => const ColorScheme.dark(
    primary: darkPrimary,
    onPrimary: darkOnPrimary,
    primaryContainer: darkPrimaryContainer,
    onPrimaryContainer: darkOnPrimaryContainer,
    secondary: darkSecondary,
    onSecondary: darkOnSecondary,
    secondaryContainer: darkSecondaryContainer,
    onSecondaryContainer: darkOnSecondaryContainer,
    tertiary: darkTertiary,
    onTertiary: darkOnTertiary,
    tertiaryContainer: darkTertiaryContainer,
    onTertiaryContainer: darkOnTertiaryContainer,
    error: darkError,
    onError: darkOnError,
    errorContainer: darkErrorContainer,
    onErrorContainer: darkOnErrorContainer,
    outline: darkOutline,
    background: darkBackground,
    onBackground: darkOnBackground,
    surface: darkSurface,
    onSurface: darkOnSurface,
    surfaceVariant: darkSurfaceVariant,
    onSurfaceVariant: darkOnSurfaceVariant,
  );

  // Light Theme Elevated Surfaces
  // A semi-transparent overlay of the surface color on the background.
  static final lightSurfaceOverlay1 = lightSurface.withValues(alpha: 0.08);
  static final lightSurfaceOverlay2 = lightSurface.withValues(alpha: 0.12);
  static final lightSurfaceOverlay3 = lightSurface.withValues(alpha: 0.16);

  // Dark Theme Elevated Surfaces
  // A semi-transparent overlay of the surface color on the background.
  static final darkSurfaceOverlay1 = darkSurface.withValues(alpha: 0.08);
  static final darkSurfaceOverlay2 = darkSurface.withValues(alpha: 0.12);
  static final darkSurfaceOverlay3 = darkSurface.withValues(alpha: 0.16);

  static final gradient1 = Color(0xff0C1D4D);
  static final gradient2 = Color(0xff214ECC);
  // Light surface gradient
  static final lightSurfaceGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      gradient1,
      gradient2,
    ],
  );
  static const altBg = Color(0xff314A8F);
}
