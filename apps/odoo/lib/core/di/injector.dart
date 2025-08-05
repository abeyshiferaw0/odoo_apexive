import 'package:get_it/get_it.dart';
import 'package:odoo/core/bloc/timer/timer_bloc.dart';

final GetIt sl = GetIt.instance;

Future<void> initInjector() async {
  sl.registerLazySingleton<TimerBloc>(TimerBloc.new);
}
