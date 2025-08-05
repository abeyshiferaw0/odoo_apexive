part of 'timer_bloc.dart';

class TimerState extends Equatable {
  const TimerState({
    this.timers = const [],
    this.isLoading = false,
  });

  factory TimerState.fromJson(Map<String, dynamic> json) {
    final timers = (json['timers'] as List)
        .map((item) => TimerModel.fromJson(item as Map<String, dynamic>))
        .toList();
    return TimerState(timers: timers);
  }
  final List<TimerModel> timers;
  final bool isLoading;

  TimerState copyWith({
    bool? isLoading,
    List<TimerModel>? timers,
  }) {
    return TimerState(
      timers: timers ?? this.timers,
      isLoading: isLoading ?? this.isLoading,
    );
  }

  Map<String, dynamic> toJson() => {
    'timers': timers.map((t) => t.toJson()).toList(),
  };

  @override
  List<Object?> get props => [timers];
}
