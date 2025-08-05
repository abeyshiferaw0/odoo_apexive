import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'task_details_event.dart';
part 'task_details_state.dart';

class TaskDetailsBloc extends Bloc<TaskDetailsEvent, TaskDetailsState> {
  TaskDetailsBloc() : super(const TaskDetailsState()) {
    on<TaskDetailsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
