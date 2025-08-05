import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoo/core/bloc/timer/timer_bloc.dart';
import 'package:odoo/core/utils/format_utils.dart';
import 'package:odoo/data/models/timer_model.dart';

class TimerDescriptionCardWidget extends StatelessWidget {
  const TimerDescriptionCardWidget({required this.timerModel, super.key});

  final TimerModel timerModel;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(
        AppSpacing.space16,
      ),
      decoration: BoxDecoration(
        color: AppColors.lightSurfaceOverlay1,
        borderRadius: BorderRadius.circular(
          AppSpacing.space16,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Monday',
                style: AppTheme.textTheme(context).bodySmall,
              ),
              Text(
                '17.07.2023',
                style: AppTheme.textTheme(context).titleMedium,
              ),
              Text(
                'Start Time 10:00',
                style: AppTheme.textTheme(context).bodySmall,
              ),
            ],
          ),
          SizedBox(height: AppSpacing.space8),

          // Timer and control buttons section.
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // Large timer display.
              Expanded(
                child: BlocBuilder<TimerBloc, TimerState>(
                  builder: (context, state) {
                    // Find the timer in the state
                    final item = state.timers.firstWhere(
                      (e) => e.id == timerModel.id,
                    );

                    return Text(
                      FormatUtils().formatSecondsToHMS(item.elapsedTimeInSec),
                      style: AppTheme.textTheme(context).displaySmall,
                    );
                  },
                ),
              ),
              BlocBuilder<TimerBloc, TimerState>(
                builder: (context, state) {
                  // Find the timer in the state
                  final item = state.timers.firstWhere(
                    (e) => e.id == timerModel.id,
                  );

                  return Row(
                    children: [
                      GestureDetector(
                        onTap: () {
                          // Start or pause the timer
                          context.read<TimerBloc>().add(
                            ResetTimersEvent(timerId: item.id),
                          );
                        },
                        child: CircleAvatar(
                          radius: AppSpacing.iconSize24,
                          backgroundColor: AppTheme.colorScheme(
                            context,
                          ).secondaryContainer.withValues(alpha: 0.16),
                          child: AppIcons.icons.icStop.svg(),
                        ),
                      ),
                      SizedBox(width: AppSpacing.space16),

                      GestureDetector(
                        onTap: () {
                          // Start or pause the timer
                          context.read<TimerBloc>().add(
                            StartOrPauseEvent(
                              timerId: timerModel.id,
                            ),
                          );
                        },
                        child: CircleAvatar(
                          radius: AppSpacing.iconSize24,
                          backgroundColor: item.timeIsRunning
                              ? AppTheme.colorScheme(
                                  context,
                                ).primaryContainer
                              : AppTheme.colorScheme(
                                  context,
                                ).secondaryContainer.withValues(
                                  alpha: 0.16,
                                ),
                          child: AppIcons.icons.icPause.svg(
                            colorFilter: ColorFilter.mode(
                              item.timeIsRunning
                                  ? AppTheme.colorScheme(
                                      context,
                                    ).onPrimaryContainer
                                  : AppTheme.colorScheme(
                                      context,
                                    ).onSecondaryContainer,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ],
          ),

          Padding(
            padding: EdgeInsets.symmetric(
              vertical: AppSpacing.space16,
            ),
            child: Divider(
              height: 1,
              color: AppTheme.colorScheme(
                context,
              ).outline.withValues(alpha: 0.16),
            ),
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
            timerModel.description,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: AppTheme.textTheme(context).bodyMedium,
          ),
          SizedBox(height: AppSpacing.space4),
          Text(
            'Read More',
            style: AppTheme.textTheme(context).bodySmall,
          ),
        ],
      ),
    );
  }
}
