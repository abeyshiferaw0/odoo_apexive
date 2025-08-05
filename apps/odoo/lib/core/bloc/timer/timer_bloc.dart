import 'dart:async';
import 'package:equatable/equatable.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:odoo/data/models/models.dart';
import 'package:uuid/uuid.dart';

part 'timer_event.dart';
part 'timer_state.dart';

class TimerBloc extends HydratedBloc<TimerEvent, TimerState> {
  TimerBloc() : super(const TimerState()) {
    on<AddTimerEvent>(_onAddTimerEvent);
    on<StartOrPauseEvent>(_onStartOrPauseEvent);
    on<StartTimerEvent>(_onStartTimerEvent);
    on<PauseTimerEvent>(_onPauseTimerEvent);
    on<TickTimerEvent>(_onTickTimerEvent);
    on<ResetTimersEvent>(_onResetTimersEvent);
  }

  // Only one active timer at a time, map is not needed
  Timer? _activeTimer;
  String? _runningTimerId;

  FutureOr<void> _onAddTimerEvent(
    AddTimerEvent event,
    Emitter<TimerState> emit,
  ) {
    emit(state.copyWith(isLoading: true));

    final timerModel = TimerModel(
      id: const Uuid().v4(),
      project: event.project,
      task: event.task,
      isCompleted: false,
      elapsedTimeInSec: 0,
      description: event.description,
      isFavorite: event.isFavorite,
      timeIsRunning: false,
    );

    final updated = List.of(state.timers)..add(timerModel);
    emit(state.copyWith(timers: updated, isLoading: false));
  }

  FutureOr<void> _onStartTimerEvent(
    StartTimerEvent event,
    Emitter<TimerState> emit,
  ) {
    // If this timer is already running, do nothing
    if (_runningTimerId == event.timerId) return null;

    // Cancel any existing timer
    _activeTimer?.cancel();

    // Update state: set only this timer running, all others paused
    final timers = state.timers.map((timer) {
      if (timer.id == event.timerId) {
        return timer.copyWith(timeIsRunning: true);
      } else if (timer.timeIsRunning) {
        return timer.copyWith(timeIsRunning: false);
      }
      return timer;
    }).toList();

    emit(state.copyWith(timers: timers));

    _runningTimerId = event.timerId;

    // Start periodic timer that adds TickTimerEvent every second
    _activeTimer = Timer.periodic(const Duration(seconds: 1), (_) {
      // Instead of emitting here (not allowed), add TickTimerEvent
      add(TickTimerEvent(timerId: event.timerId));
    });
  }

  FutureOr<void> _onTickTimerEvent(
    TickTimerEvent event,
    Emitter<TimerState> emit,
  ) {
    if (_runningTimerId != event.timerId) return null;

    final updatedTimers = state.timers.map((timer) {
      if (timer.id == event.timerId && timer.timeIsRunning) {
        return timer.copyWith(elapsedTimeInSec: timer.elapsedTimeInSec + 1);
      }
      return timer;
    }).toList();

    emit(state.copyWith(timers: updatedTimers));
  }

  FutureOr<void> _onPauseTimerEvent(
    PauseTimerEvent event,
    Emitter<TimerState> emit,
  ) {
    // Only pause if this timer is running
    if (_runningTimerId == event.timerId) {
      _activeTimer?.cancel();
      _activeTimer = null;
      _runningTimerId = null;

      final timers = state.timers.map((timer) {
        return timer.copyWith(timeIsRunning: false);
      }).toList();

      emit(state.copyWith(timers: timers));
    }
  }

  @override
  TimerState? fromJson(Map<String, dynamic> json) => TimerState.fromJson(json);

  @override
  Map<String, dynamic>? toJson(TimerState state) => state.toJson();

  @override
  Future<void> close() {
    _activeTimer?.cancel();
    return super.close();
  }

  FutureOr<void> _onStartOrPauseEvent(
    StartOrPauseEvent event,
    Emitter<TimerState> emit,
  ) {
    // Check if the timer is already running
    final isRunning = state.timers.any(
      (timer) => timer.id == event.timerId && timer.timeIsRunning,
    );

    // Start or pause the timer based on isRunning value
    if (isRunning) {
      add(PauseTimerEvent(timerId: event.timerId));
    } else {
      add(StartTimerEvent(timerId: event.timerId));
    }
  }

  FutureOr<void> _onResetTimersEvent(
    ResetTimersEvent event,
    Emitter<TimerState> emit,
  ) {
    // Cancel the active periodic timer if any
    _activeTimer?.cancel();
    _activeTimer = null;
    _runningTimerId = null;

    // Set all timers' timeIsRunning to false
    // Set elapsedTimeInSec to 0 for item selected
    final updatedTimers = state.timers.map((timer) {
      if (event.timerId == timer.id) {
        return timer.copyWith(
          timeIsRunning: false,
          elapsedTimeInSec: 0,
        );
      }
      return timer.copyWith(timeIsRunning: false);
    }).toList();

    emit(state.copyWith(timers: updatedTimers));
  }
}
