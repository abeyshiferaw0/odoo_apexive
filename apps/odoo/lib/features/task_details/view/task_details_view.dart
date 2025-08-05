import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:odoo/core/widgets/app_scaffold.dart';
import 'package:odoo/data/models/models.dart';
import 'package:odoo/features/task_details/view/tab_pages/tab_pages.dart';

class TaskDetailsView extends StatefulWidget {
  const TaskDetailsView({required this.timerModel, super.key});

  final TimerModel timerModel;

  @override
  State<TaskDetailsView> createState() => _TaskDetailsViewState();
}

class _TaskDetailsViewState extends State<TaskDetailsView>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AppScaffold(
      child: Column(
        children: [
          // Build App bar
          buildAppBar(context),

          // Builds tabs for task details
          buildTabs(context),

          // Build tab view
          Expanded(
            child: buildTabView(context),
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
                // Navigate back to the previous screen.
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
            child: ConstrainedBox(
              constraints: BoxConstraints(
                maxWidth: AppSpacing.space52 * 4,
              ),
              child: Text(
                widget.timerModel.task,
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
                style: AppTheme.textTheme(context).titleMedium,
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerRight,
            child: IconButton(
              onPressed: () {},
              padding: EdgeInsets.zero,
              icon: AppIcons.icons.icEdit.svg(
                width: AppSpacing.iconSize48,
                height: AppSpacing.iconSize48,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildTabs(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: AppSpacing.space8),
      child: TabBar(
        controller: _tabController,
        unselectedLabelStyle: AppTheme.textTheme(context).labelLarge,
        labelStyle: AppTheme.textTheme(context).labelLarge,
        labelColor: AppTheme.colorScheme(context).onSurface,
        unselectedLabelColor: AppTheme.colorScheme(context).onSurface,
        dividerColor: AppTheme.colorScheme(
          context,
        ).outline.withValues(alpha: 0.5),
        dividerHeight: 1,
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(
            color: AppTheme.colorScheme(context).onSurface,
            width: 2.5,
          ),
          insets: EdgeInsets.symmetric(
            horizontal: -AppSpacing.space10,
          ),
        ),
        tabs: const [
          Tab(text: 'Timesheets'),
          Tab(text: 'Details'),
        ],
      ),
    );
  }

  Widget buildTabView(BuildContext context) {
    return TabBarView(
      controller: _tabController,
      children: [
        TimesheetsTabPage(
          timerModel: widget.timerModel,
        ),
        const DetailsTabPage(),
      ],
    );
  }
}
