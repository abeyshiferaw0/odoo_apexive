import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppElevatedButton extends StatelessWidget {
  const AppElevatedButton({
    required this.onPressed,
    required this.text,
    super.key,
  });

  final VoidCallback onPressed;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: AppTheme.colorScheme(context).surface.withValues(
          alpha: 0.16,
        ),
        foregroundColor: AppTheme.colorScheme(context).secondaryContainer,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.space12),
        ),
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: AppSpacing.space14),
        child: Center(
          child: Text(
            text,
            style: AppTheme.textTheme(context).labelLarge,
          ),
        ),
      ),
    );
  }
}
