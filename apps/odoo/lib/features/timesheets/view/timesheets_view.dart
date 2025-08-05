import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:odoo/core/bloc/timer/timer_bloc.dart';
import 'package:odoo/core/routes/routes.dart';
import 'package:odoo/core/widgets/widgets.dart';
import 'package:odoo/features/timesheets/view/widgets/widgets.dart';

// TimesheetsView is a StatelessWidget that displays a list of timesheets.
class TimesheetsView extends StatelessWidget {
  const TimesheetsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // buildPageHeader displays the header of the timesheets page.
        buildPageHeader(context),

        // buildTimerList displays the list of timers.
        Expanded(
          child: BlocBuilder<TimerBloc, TimerState>(
            builder: (context, state) {
              if (state.timers.isEmpty) {
                return const EmptyTimersWidget();
              }
              return buildTimerList(context);
            },
          ),
        ),
      ],
    );
  }

  // buildPageHeader returns a widget that displays the header of the timesheets page.
  Widget buildPageHeader(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              'Timesheets',
              style: AppTheme.textTheme(context).headlineLarge,
            ),
            const Expanded(
              child: SizedBox(),
            ),
            AppIconButton(
              icon: AppIcons.icons.icArrowUpDown.svg(
                width: AppSpacing.iconSize22,
                height: AppSpacing.iconSize22,
              ),
            ),
            SizedBox(
              width: AppSpacing.space8,
            ),
            AppIconButton(
              icon: AppIcons.icons.icPlus.svg(
                width: AppSpacing.iconSize20,
                height: AppSpacing.iconSize20,
              ),
              onPressed: () async {
                // Navigate to the create timer page.
                final isCreated = await context.push(AppRoutes.createTimer);
                if (isCreated == true) {}
              },
            ),
          ],
        ),
        SizedBox(
          height: AppSpacing.space16,
        ),
        Divider(
          color: AppColors.lightSurfaceOverlay3,
          thickness: 0.5,
          height: 0.5,
        ),
        SizedBox(
          height: AppSpacing.space16,
        ),
        BlocBuilder<TimerBloc, TimerState>(
          builder: (context, state) {
            if (state.timers.isEmpty) return const SizedBox();
            return Text(
              'You have 16 Timers',
              style: AppTheme.textTheme(context).labelLarge,
            );
          },
        ),
      ],
    );
  }

  // buildTimerList returns a widget that displays the list of timers.
  Widget buildTimerList(BuildContext context) {
    return BlocBuilder<TimerBloc, TimerState>(
      builder: (context, state) {
        return ListView.separated(
          padding: EdgeInsets.only(top: AppSpacing.space18),
          itemBuilder: (context, index) {
            return TimerItem(
              onPressed: () {
                // Navigate to the task details page.
                context.push(
                  AppRoutes.taskDetails,
                  extra: state.timers[index],
                );
              },
              timerModel: state.timers[index],
            );
          },
          separatorBuilder: (context, index) {
            return SizedBox(
              height: AppSpacing.space8,
            );
          },
          itemCount: state.timers.length,
        );
      },
    );
  }
}
