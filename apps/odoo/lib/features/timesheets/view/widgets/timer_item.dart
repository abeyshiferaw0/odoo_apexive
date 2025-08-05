import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoo/core/bloc/timer/timer_bloc.dart';
import 'package:odoo/core/utils/format_utils.dart';
import 'package:odoo/data/models/models.dart';

class TimerItem extends StatelessWidget {
  const TimerItem({
    required this.onPressed,
    required this.timerModel,
    super.key,
  });

  final VoidCallback onPressed;
  final TimerModel timerModel;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.lightSurfaceOverlay1,
          borderRadius: BorderRadius.circular(
            AppSpacing.space16,
          ),
        ),
        child: IntrinsicHeight(
          child: Padding(
            padding: EdgeInsets.all(AppSpacing.space16),
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(AppSpacing.space6),
                  child: VerticalDivider(
                    width: AppSpacing.space4 / 2,
                    thickness: AppSpacing.space4 / 2,
                    color: const Color(0xffFFC629),
                  ),
                ),

                SizedBox(
                  width: AppSpacing.space12,
                ),

                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ///
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.only(top: AppSpacing.space4),
                            child: timerModel.isFavorite
                                ? AppIcons.icons.icStarCharFilled.svg(
                                    width: AppSpacing.iconSize16,
                                    height: AppSpacing.iconSize16,
                                  )
                                : AppIcons.icons.icStarChar.svg(
                                    width: AppSpacing.iconSize16,
                                    height: AppSpacing.iconSize16,
                                  ),
                          ),
                          SizedBox(width: AppSpacing.space8),
                          Expanded(
                            child: Text(
                              timerModel.project,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: AppTheme.textTheme(context).titleMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: AppSpacing.space6),
                      Row(
                        children: [
                          AppIcons.icons.icProjectChar.svg(
                            width: AppSpacing.iconSize16,
                            height: AppSpacing.iconSize16,
                          ),
                          SizedBox(width: AppSpacing.space8),
                          Expanded(
                            child: Text(
                              timerModel.task,
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTheme.textTheme(context).bodyMedium,
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: AppSpacing.space8),
                      Row(
                        children: [
                          AppIcons.icons.icTimerChar.svg(
                            width: AppSpacing.iconSize16,
                            height: AppSpacing.iconSize16,
                          ),
                          SizedBox(width: AppSpacing.space8),
                          Expanded(
                            child: Text(
                              'Deadline 07/20/2023',
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                              style: AppTheme.textTheme(context).bodyMedium,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),

                SizedBox(
                  width: AppSpacing.space8,
                ),

                // Build timer counter button
                buildTimerCounterButton(
                  context,
                  timerModel: timerModel,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget buildTimerCounterButton(
    BuildContext context, {
    required TimerModel timerModel,
  }) {
    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        // Find the timer in the state
        final item = state.timers.firstWhere((e) => e.id == timerModel.id);

        return GestureDetector(
          onTap: () {

            // Start or pause the timer
            context.read<TimerBloc>().add(
              StartOrPauseEvent(
                timerId: timerModel.id,
              ),
            );

          },
          child: Container(
            decoration: BoxDecoration(
              color: item.timeIsRunning
                  ? AppTheme.colorScheme(context).primaryContainer
                  : AppColors.lightSurfaceOverlay1,
              borderRadius: BorderRadius.circular(50),
            ),
            padding: EdgeInsets.only(
              left: AppSpacing.space18,
              right: AppSpacing.space18,
              top: AppSpacing.space12,
              bottom: AppSpacing.space12,
            ),
            child: Row(
              children: [
                Text(
                  FormatUtils().formatSecondsToMMSS(
                    item.elapsedTimeInSec,
                  ),
                  style: AppTheme.textTheme(context).labelLarge?.copyWith(
                    color: item.timeIsRunning
                        ? AppTheme.colorScheme(context).onPrimaryContainer
                        : AppTheme.colorScheme(context).onSecondaryContainer,
                  ),
                ),
                SizedBox(width: AppSpacing.space12),
                AppIcons.icons.icPause.svg(
                  width: AppSpacing.iconSize18,
                  height: AppSpacing.iconSize16,
                  colorFilter: ColorFilter.mode(
                    item.timeIsRunning
                        ? AppTheme.colorScheme(context).onPrimaryContainer
                        : AppTheme.colorScheme(context).onSecondaryContainer,
                    BlendMode.srcIn,
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
