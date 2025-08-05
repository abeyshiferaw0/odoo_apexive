import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'timesheets_event.dart';
part 'timesheets_state.dart';

class TimesheetsBloc extends Bloc<TimesheetsEvent, TimesheetsState> {
  TimesheetsBloc() : super(const TimesheetsState()) {
    on<TimesheetsEvent>((event, emit) {
      // TODO: implement event handler
    });
  }
}
