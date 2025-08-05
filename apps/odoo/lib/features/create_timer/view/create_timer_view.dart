import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:odoo/core/bloc/timer/timer_bloc.dart';
import 'package:odoo/core/utils/fake_data_util.dart';
import 'package:odoo/core/widgets/widgets.dart';
import 'package:odoo/data/models/models.dart';

class CreateTimerView extends StatefulWidget {
  CreateTimerView({super.key});

  @override
  State<CreateTimerView> createState() => _CreateTimerViewState();
}

class _CreateTimerViewState extends State<CreateTimerView> {
  final _formKey = GlobalKey<FormState>();

  String project = '';

  String task = '';

  String description = '';

  bool isFavorite = false;

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(
        children: [
          // Build App bar
          buildAppBar(context),

          SizedBox(
            height: AppSpacing.space24,
          ),

          // Build timer creating form
          Expanded(child: buildTimerCreatingForm(context)),

          // Build create timer button
          AppElevatedButton(
            onPressed: () {
              // Handle form submission
              _submit(context);
            },
            text: 'Create Project',
          ),

          SizedBox(
            height: AppSpacing.space24,
          ),
        ],
      ),
    );
  }

  Widget buildAppBar(BuildContext context) {
    return SizedBox(
      height: kToolbarHeight * 0.9,
      child: Stack(
        children: [
          Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: () {
                context.pop();
              },
              padding: EdgeInsets.zero,
              icon: AppIcons.icons.icBack.svg(
                width: AppSpacing.iconSize48,
                height: AppSpacing.iconSize48,
              ),
            ),
          ),
          Align(
            child: Text(
              'Create Timer',
              style: AppTheme.textTheme(context).headlineSmall,
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTimerCreatingForm(BuildContext context) {
    return Form(
      key: _formKey,

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          AppDropDown(
            items: FakeDataUtil.sampleProjectTitles,
            label: 'Project',
            onChanged: (value) {
              // Handle project selection
              project = value!;
            },
          ),
          SizedBox(
            height: AppSpacing.space24,
          ),
          AppDropDown(
            items: FakeDataUtil.sampleTasks,
            label: 'Task',
            onChanged: (value) {
              // Handle task selection
              task = value!;
            },
          ),
          SizedBox(
            height: AppSpacing.space24,
          ),
          AppTextField(
            label: 'Description',
            onChange: (String? value) {
              // Handle description change
              if (value == null) return;
              description = value;
            },
          ),
          SizedBox(
            height: AppSpacing.space24,
          ),
          AppCheckBox(
            text: 'Make Favorite',
            value: false,
            onChanged: (bool? newValue) {
              // Handle favorite checkbox change
              if (newValue == null) return;
              isFavorite = newValue;
            },
          ),
        ],
      ),
    );
  }

  void _submit(BuildContext context) {
    if (_formKey.currentState!.validate()) {
      // Handle form submission
      context.read<TimerBloc>().add(
        AddTimerEvent(
          project: project,
          task: task,
          description: description,
          isFavorite: isFavorite,
        ),
      );

      // Navigate back to the previous screen.
      context.pop();
    }
  }
}
