import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'create_timer_event.dart';
part 'create_timer_state.dart';

class CreateTimerBloc extends Bloc<CreateTimerEvent, CreateTimerState> {
  CreateTimerBloc() : super(const CreateTimerState()) {
    on<CreateTimerEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
