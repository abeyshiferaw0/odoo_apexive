import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:odoo/features/task_details/view/widgets/widgets.dart';

class CompletedRecordsListWidget extends StatelessWidget {
  const CompletedRecordsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Completed Records',
          style: AppTheme.textTheme(context).bodySmall,
        ),
        SizedBox(
          height: AppSpacing.space8,
        ),
        const CompletedRecordItemWidget(hasDescription: false),
        SizedBox(
          height: AppSpacing.space8,
        ),
        const CompletedRecordItemWidget(hasDescription: true),
      ],
    );
  }
}
