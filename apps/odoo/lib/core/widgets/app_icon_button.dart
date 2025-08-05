import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class AppIconButton extends StatelessWidget {
  const AppIconButton({super.key, required this.icon, this.onPressed});

  final Widget icon;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.zero,
        backgroundColor: AppColors.lightSurfaceOverlay3,
        elevation: 0,
        minimumSize: const Size(0, 0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(AppSpacing.space14),
        ),
      ),
      child: SizedBox(
        width: AppSpacing.iconSize48,
        height: AppSpacing.iconSize48,
        child: Center(
          child: icon,
        ),
      ),
    );
  }
}
