import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:odoo/core/bloc/timer/timer_bloc.dart';
import 'package:odoo/core/di/injector.dart';
import 'package:odoo/data/models/models.dart';
import 'package:odoo/features/create_timer/create_timer.dart';
import 'package:odoo/features/home/view/view.dart';
import 'package:odoo/features/task_details/view/task_details_page.dart';
import 'package:odoo/features/timesheets/timesheets.dart';

//
final _routerKey = GlobalKey<NavigatorState>();

class AppRoutes {
  // routes constants defined
  static const String timesheets = '/timesheets';
  static const String projects = '/projects';
  static const String settings = '/settings';
  static const String createTimer = '/create_timer';
  static const String taskDetails = '/task_details';
}

// Define the GoRouter instance
final GoRouter goRouter = GoRouter(
  initialLocation: AppRoutes.timesheets,
  navigatorKey: _routerKey,
  routes: <RouteBase>[
    StatefulShellRoute.indexedStack(
      builder: (context, state, navigationShell) {
        return HomePage(navigationShell: navigationShell);
      },
      branches: [
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.timesheets,
              builder: (context, state) => BlocProvider.value(
                value: sl<TimerBloc>(),
                child: const TimesheetsPage(),
              ),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.projects,
              builder: (context, state) => const TimesheetsPage(),
            ),
          ],
        ),
        StatefulShellBranch(
          routes: [
            GoRoute(
              path: AppRoutes.settings,
              builder: (context, state) => const TimesheetsPage(),
            ),
          ],
        ),
      ],
    ),
    GoRoute(
      path: AppRoutes.createTimer,
      builder: (BuildContext context, GoRouterState state) {
        return BlocProvider.value(
          value: sl<TimerBloc>(),
          child: const CreateTimerPage(),
        );
      },
    ),
    GoRoute(
      path: AppRoutes.taskDetails,
      builder: (BuildContext context, GoRouterState state) {
        final timerModel = state.extra as TimerModel?;
        return BlocProvider.value(
          value: sl<TimerBloc>(),
          child: TaskDetailsPage(
            timerModel: timerModel!,
          ),
        );
      },
    ),
  ],
);
