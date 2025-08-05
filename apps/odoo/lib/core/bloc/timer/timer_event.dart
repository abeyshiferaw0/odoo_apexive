part of 'timer_bloc.dart';

abstract class TimerEvent extends Equatable {
  const TimerEvent();

  @override
  List<Object> get props => [];
}

class AddTimerEvent extends TimerEvent {
  const AddTimerEvent({
    required this.project,
    required this.task,
    required this.description,
    required this.isFavorite,
  });
  final String project;
  final String task;
  final String description;
  final bool isFavorite;

  @override
  List<Object> get props => [
    project,
    task,
    description,
    isFavorite,
  ];
}

class StartTimerEvent extends TimerEvent {
  const StartTimerEvent({
    required this.timerId,
  });
  final String timerId;

  @override
  List<Object> get props => [timerId];
}

class PauseTimerEvent extends TimerEvent {
  const PauseTimerEvent({
    required this.timerId,
  });
  final String timerId;

  @override
  List<Object> get props => [timerId];
}

class TickTimerEvent extends TimerEvent {
  const TickTimerEvent({required this.timerId});

  final String timerId;

  @override
  List<Object> get props => [timerId];
}

class StartOrPauseEvent extends TimerEvent {
  const StartOrPauseEvent({required this.timerId});

  final String timerId;

  @override
  List<Object> get props => [timerId];
}

class ResetTimersEvent extends TimerEvent {
  const ResetTimersEvent({required this.timerId});

  final String timerId;

  @override
  List<Object> get props => [timerId];
}
