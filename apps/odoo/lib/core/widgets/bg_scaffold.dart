import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class BgScaffold extends StatelessWidget {
  const BgScaffold({super.key, required this.child});

  /// The child widget to be displayed in the scaffold.
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: double.infinity,
      decoration:  BoxDecoration(
        gradient: AppColors.lightSurfaceGradient,
      ),
      child: child,
    );
  }
}
