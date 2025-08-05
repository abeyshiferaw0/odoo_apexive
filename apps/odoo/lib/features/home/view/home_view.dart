import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:odoo/core/widgets/widgets.dart';

class HomeView extends StatelessWidget {
  const HomeView({required this.navigationShell, super.key});

  final StatefulNavigationShell navigationShell;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      extendBody: true,
      bottomNavigationBar: buildBottomNav(context),
      child: navigationShell,
    );
  }

  Widget buildBottomNav(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: navigationShell.currentIndex,
      onTap: goToBranch,
      backgroundColor: Colors.transparent,
      elevation: 0,
      selectedItemColor: AppTheme.colorScheme(context).surfaceContainerHighest,
      unselectedItemColor: AppTheme.colorScheme(context).surfaceContainerHighest,
      selectedLabelStyle: AppTheme.textTheme(context).labelMedium?.copyWith(
        fontWeight: FontWeight.w300,
      ),
      unselectedLabelStyle: AppTheme.textTheme(context).labelMedium?.copyWith(
        fontWeight: FontWeight.w300,
      ),
      items: <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          backgroundColor: Colors.transparent,
          icon: Padding(
            padding: EdgeInsets.only(bottom: AppSpacing.space8),
            child: AppIcons.icons.icTimesheets.svg(
              width: AppSpacing.iconSize22,
              height: AppSpacing.iconSize22,
            ),
          ),
          label: 'Timesheets',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.transparent,
          icon: Padding(
            padding: EdgeInsets.only(bottom: AppSpacing.space8),
            child: AppIcons.icons.icProjects.svg(
              width: AppSpacing.iconSize22,
              height: AppSpacing.iconSize22,
            ),
          ),
          label: 'Projects',
        ),
        BottomNavigationBarItem(
          backgroundColor: Colors.transparent,
          icon: Padding(
            padding: EdgeInsets.only(bottom: AppSpacing.space8),
            child: AppIcons.icons.icSettings.svg(
              width: AppSpacing.iconSize22,
              height: AppSpacing.iconSize22,
            ),
          ),
          label: 'Settings',
        ),
      ],
    );
  }

  void goToBranch(int index) {
    navigationShell.goBranch(
      index,
      initialLocation: index == navigationShell.currentIndex,
    );
  }
}
