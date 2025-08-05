import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:odoo/features/create_timer/create_timer.dart';

class CreateTimerPage extends StatelessWidget {
  const CreateTimerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CreateTimerBloc(),
      child:  CreateTimerView(),
    );
  }
}
