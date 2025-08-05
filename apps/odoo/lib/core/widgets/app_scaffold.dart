import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:odoo/core/widgets/widgets.dart';

class AppScaffold extends StatelessWidget {
  const AppScaffold({
    super.key,
    required this.child,
    this.extendBody,
    this.bottomNavigationBar,
  });

  final Widget child;
  final bool? extendBody;
  final Widget? bottomNavigationBar;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.transparent,
      body: BgScaffold(
        child: SafeArea(
          child: Padding(
            padding: EdgeInsets.only(
              left: AppSpacing.space16,
              right: AppSpacing.space16,
              top: AppSpacing.space16,
            ),
            child: child,
          ),
        ),
      ),
      extendBody: extendBody ?? false,
      bottomNavigationBar: bottomNavigationBar,
    );
  }
}
