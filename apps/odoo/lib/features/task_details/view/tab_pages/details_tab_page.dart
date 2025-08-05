import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class DetailsTabPage extends StatelessWidget {
  const DetailsTabPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: AppSpacing.space16,
          ),

          // Build project details widget
          buildProjectDetailsWidget(context),

          SizedBox(
            height: AppSpacing.space8,
          ),

          // Build details description
          buildDetailsDescription(context),
        ],
      ),
    );
  }

  Widget buildProjectDetailsWidget(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightSurfaceOverlay1,
        borderRadius: BorderRadius.circular(
          AppSpacing.space16,
        ),
      ),
      padding: EdgeInsets.all(AppSpacing.space16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Project',
            style: AppTheme.textTheme(context).bodySmall,
          ),
          SizedBox(height: AppSpacing.space4),

          IntrinsicHeight(
            child: Row(
              children: [
                VerticalDivider(
                  color: const Color(0xffFFC629),
                  thickness: 2,
                  width: 2,
                  radius: BorderRadius.circular(AppSpacing.space8),
                ),
                SizedBox(width: AppSpacing.space8),
                Text(
                  'Apexive: Content Planning',
                  style: AppTheme.textTheme(context).titleMedium,
                ),
              ],
            ),
          ),
          SizedBox(height: AppSpacing.space16),

          Text(
            'Deadline',
            style: AppTheme.textTheme(context).bodySmall,
          ),
          SizedBox(height: AppSpacing.space4),

          Text(
            '10/11/2023',
            style: AppTheme.textTheme(context).titleMedium,
          ),
          SizedBox(height: AppSpacing.space16),

          Text(
            'Assigned to',
            style: AppTheme.textTheme(context).bodySmall,
          ),
          SizedBox(height: AppSpacing.space4),

          Text(
            'Ivan Zhuikov',
            style: AppTheme.textTheme(context).titleMedium,
          ),
        ],
      ),
    );
  }

  Widget buildDetailsDescription(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightSurfaceOverlay1,
        borderRadius: BorderRadius.circular(
          AppSpacing.space16,
        ),
      ),
      padding: EdgeInsets.all(AppSpacing.space16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Description',
            style: AppTheme.textTheme(context).bodySmall,
          ),
          SizedBox(height: AppSpacing.space4),
          Text(
            'As a user, I would like to be able to buy a subscription, this would allow me to get a discount on the products and on the second stage of diagnosis',
            style: AppTheme.textTheme(context).titleSmall,
          ),
        ],
      ),
    );
  }
}
