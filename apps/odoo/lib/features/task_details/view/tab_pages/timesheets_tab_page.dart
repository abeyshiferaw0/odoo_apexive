import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:odoo/data/models/timer_model.dart';
import 'package:odoo/features/task_details/view/widgets/widgets.dart';

class TimesheetsTabPage extends StatelessWidget {
  const TimesheetsTabPage({required this.timerModel, super.key});

  final TimerModel timerModel;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: AppSpacing.space16,
          ),
          // Build timer description widget
          TimerDescriptionCardWidget(
            timerModel: timerModel,
          ),

          SizedBox(
            height: AppSpacing.space16,
          ),

          const CompletedRecordsListWidget(),

          SizedBox(
            height: AppSpacing.space16,
          ),
        ],
      ),
    );
  }
}
