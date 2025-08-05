import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:odoo/data/models/models.dart';
import 'package:odoo/features/task_details/task_details.dart';
import 'package:odoo/features/task_details/view/task_details_view.dart';

class TaskDetailsPage extends StatelessWidget {
  const TaskDetailsPage({required this.timerModel, super.key});

  final TimerModel timerModel;

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TaskDetailsBloc(),
      child: TaskDetailsView(
        timerModel: timerModel,
      ),
    );
  }
}
