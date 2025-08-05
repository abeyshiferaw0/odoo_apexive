import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

/// A utility class for defining and retrieving the application's TextTheme.
class AppTextStyles {
  /// Returns a TextTheme object with responsive font sizes and other styles.
  /// Requires a `BuildContext` to access the responsive sizing values.
  static TextTheme getAppTextTheme(BuildContext context) {
    return Theme.of(context).textTheme.copyWith(
      // Display styles (using GoogleFonts.inter with an appropriate weight)
      displayLarge: GoogleFonts.inter(
        fontSize: AppSpacing.scale(57),
        height: 64 / 57,
        fontWeight: FontWeight.w400, // Regular
      ),
      displayMedium: GoogleFonts.inter(
        fontSize: AppSpacing.scale(45),
        height: 52 / 45,
        fontWeight: FontWeight.w400, // Regular
      ),
      displaySmall: GoogleFonts.inter(
        fontSize: AppSpacing.scale(36),
        height: 44 / 36,
        fontWeight: FontWeight.w400, // Regular
      ),

      // Headline styles (using GoogleFonts.inter with an appropriate weight)
      headlineLarge: GoogleFonts.inter(
        fontSize: AppSpacing.scale(32),
        height: 40 / 32,
        fontWeight: FontWeight.bold, // Regular
      ),
      headlineMedium: GoogleFonts.inter(
        fontSize: AppSpacing.scale(28),
        height: 36 / 28,
        fontWeight: FontWeight.bold, // Regular
      ),
      headlineSmall: GoogleFonts.inter(
        fontSize: AppSpacing.scale(24),
        height: 32 / 24,
        fontWeight: FontWeight.bold, // Regular
      ),

      // Title styles (using FontWeight.w500 for "Medium")
      titleLarge: GoogleFonts.inter(
        fontSize: AppSpacing.scale(22),
        height: 28 / 22,
        fontWeight: FontWeight.w700, // Medium
      ),
      titleMedium: GoogleFonts.inter(
        fontSize: AppSpacing.scale(16),
        height: 24 / 16,
        letterSpacing: 0.15,
        fontWeight: FontWeight.w700, // Medium
      ),
      titleSmall: GoogleFonts.inter(
        fontSize: AppSpacing.scale(14),
        height: 20 / 14,
        letterSpacing: 0.1,
        fontWeight: FontWeight.w400, // Medium
      ),

      // Label styles (using GoogleFonts.roboto with FontWeight.w500)
      labelLarge: GoogleFonts.roboto(
        fontSize: AppSpacing.scale(14),
        height: 20 / 14,
        letterSpacing: 0.1,
        fontWeight: FontWeight.w500, // Medium
      ),
      labelMedium: GoogleFonts.roboto(
        fontSize: AppSpacing.scale(12),
        height: 16 / 12,
        letterSpacing: 0.5,
        fontWeight: FontWeight.w500, // Medium
      ),
      labelSmall: GoogleFonts.roboto(
        fontSize: AppSpacing.scale(11),
        height: 16 / 11,
        letterSpacing: 0.5,
        fontWeight: FontWeight.w500, // Medium
      ),

      // Body styles (using GoogleFonts.inter with FontWeight.w400)
      bodyLarge: GoogleFonts.inter(
        fontSize: AppSpacing.scale(16),
        height: 24 / 16,
        letterSpacing: 0.15,
        fontWeight: FontWeight.w300, // Regular
      ),
      bodyMedium: GoogleFonts.inter(
        fontSize: AppSpacing.scale(14),
        height: 20 / 14,
        letterSpacing: 0.25,
        fontWeight: FontWeight.w300, // Regular
      ),
      bodySmall: GoogleFonts.inter(
        fontSize: AppSpacing.scale(12),
        height: 16 / 12,
        letterSpacing: 0.4,
        fontWeight: FontWeight.w300, // Regular
      ),
    );
  }
}
