import 'package:flutter/material.dart';

/// A utility class for providing responsive size values (padding, margins, etc.).
/// It uses a screen width scaling factor to adapt values to different screen sizes.
class AppSpacing {
  static const double _referenceWidth = 390; // Adjust as needed
  static BuildContext? _context;

  /// Method to initialize the context.
  static void init(BuildContext context) {
    _context = context;
  }

  /// Calculates the scaling factor based on the current screen width.
  static double _getScaleFactor() {
    if (_context == null) {
      throw Exception('AppSpacing context not initialized. Call init() first.');
    }
    final double screenWidth = MediaQuery.of(_context!).size.width;
    return screenWidth / _referenceWidth;
  }

  /// Scales a base pixel value based on the device's screen width.
  static double scale(double value) {
    return value * _getScaleFactor();
  }

  /// These are the base values for icon dimensions.
  static const double baseIconSize16 = 16;
  static const double baseIconSize18 = 18;
  static const double baseIconSize20 = 20;
  static const double baseIconSize22 = 22;
  static const double baseIconSize24 = 24;
  static const double baseIconSize32 = 32;
  static const double baseIconSize48 = 48;

  /// These are the base values for general spacing (padding, margins, etc.).
  static const double baseSpace4 = 4;
  static const double baseSpace6 = 6;
  static const double baseSpace8 = 8;
  static const double baseSpace10 = 10;
  static const double baseSpace12 = 12;
  static const double baseSpace14 = 14;
  static const double baseSpace16 = 16;
  static const double baseSpace18 = 18;
  static const double baseSpace20 = 20;
  static const double baseSpace24 = 24;
  static const double baseSpace32 = 32;
  static const double baseSpace44 = 44;
  static const double baseSpace52 = 52;
  static const double baseSpace64 = 64;

  /// Public getters for the scaled values
  static double get iconSize16 => scale(baseIconSize16);
  static double get iconSize18 => scale(baseIconSize18);
  static double get iconSize20 => scale(baseIconSize20);
  static double get iconSize22 => scale(baseIconSize22);
  static double get iconSize24 => scale(baseIconSize24);
  static double get iconSize32 => scale(baseIconSize32);
  static double get iconSize48 => scale(baseIconSize48);

  ///
  static double get space4 => scale(baseSpace4);
  static double get space6 => scale(baseSpace6);
  static double get space8 => scale(baseSpace8);
  static double get space10 => scale(baseSpace10);
  static double get space12 => scale(baseSpace12);
  static double get space14 => scale(baseSpace14);
  static double get space16 => scale(baseSpace16);
  static double get space18 => scale(baseSpace18);
  static double get space20 => scale(baseSpace20);
  static double get space24 => scale(baseSpace24);
  static double get space32 => scale(baseSpace32);
  static double get space44 => scale(baseSpace44);
  static double get space52 => scale(baseSpace52);
  static double get space64 => scale(baseSpace64);
}
