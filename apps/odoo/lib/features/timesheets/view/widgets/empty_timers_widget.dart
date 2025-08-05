import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class EmptyTimersWidget extends StatelessWidget {
  const EmptyTimersWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Material(
            color: AppColors.lightSurfaceOverlay1,
            borderRadius: BorderRadius.circular(AppSpacing.space32),
            child: Padding(
              padding: EdgeInsets.all(AppSpacing.space52),
              child: AppIcons.icons.icTimesheets.svg(
                width: AppSpacing.iconSize48 * 3,
                height: AppSpacing.iconSize32 * 3,
              ),
            ),
          ),
          SizedBox(
            height: AppSpacing.space32,
          ),
          Text(
            'You don’t have any local timesheets',
            textAlign: TextAlign.center,
            style: AppTheme.textTheme(context).headlineMedium,
          ),
          SizedBox(
            height: AppSpacing.space8,
          ),
          Text(
            'Create a timer to to begin tracking time',
            textAlign: TextAlign.center,
            style: AppTheme.textTheme(context).bodyLarge,
          ),
        ],
      ),
    );
  }
}
