import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';

class CompletedRecordItemWidget extends StatelessWidget {
  const CompletedRecordItemWidget({super.key, required this.hasDescription});

  final bool hasDescription;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(AppSpacing.space16),
      decoration: BoxDecoration(
        color: AppColors.lightSurfaceOverlay1,
        borderRadius: BorderRadius.circular(
          AppSpacing.space16,
        ),
      ),
      child: Column(
        children: [
          // Card top header
          Row(
            children: [
              AppIcons.icons.icChecked.svg(
                width: AppSpacing.iconSize24,
                height: AppSpacing.iconSize24,
              ),
              SizedBox(
                width: AppSpacing.space10,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Sunday',
                      style: AppTheme.textTheme(context).bodySmall,
                    ),
                    SizedBox(
                      height: AppSpacing.space4,
                    ),
                    Text(
                      '16.06.2023',
                      style: AppTheme.textTheme(context).titleMedium,
                    ),
                    SizedBox(
                      height: AppSpacing.space4,
                    ),
                    Text(
                      'Start Time 10:00',
                      style: AppTheme.textTheme(context).bodySmall,
                    ),
                  ],
                ),
              ),

              //
              buildTimerCounter(context),
            ],
          ),

          // Card bottom section
          if (hasDescription)
            buildCardBottomSection(context)
          else
            const SizedBox(),
        ],
      ),
    );
  }

  Widget buildTimerCounter(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.lightSurfaceOverlay1,
        borderRadius: BorderRadius.circular(50),
      ),
      padding: EdgeInsets.symmetric(
        horizontal: AppSpacing.space18,
        vertical: AppSpacing.space10,
      ),
      child: Text(
        '08:30',
        style: AppTheme.textTheme(context).labelLarge,
      ),
    );
  }

  Widget buildCardBottomSection(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: AppSpacing.space16,
        ),
        Divider(
          color: AppColors.lightSurfaceOverlay3,
          thickness: 0.5,
          height: 0.5,
        ),

        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              'Description',
              style: AppTheme.textTheme(context).bodySmall,
            ),
            IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              icon: AppIcons.icons.icEdit.svg(),
              iconSize: AppSpacing.baseIconSize32,
            ),
          ],
        ),
        SizedBox(height: AppSpacing.space4),
        Text(
          'As a user, I would like to be able to buy a subscription, this would allow me to get a discount on the products and on the second stage of diagnosis',
          maxLines: 4,
          overflow: TextOverflow.ellipsis,
          style: AppTheme.textTheme(context).bodyMedium,
        ),
      ],
    );
  }
}
