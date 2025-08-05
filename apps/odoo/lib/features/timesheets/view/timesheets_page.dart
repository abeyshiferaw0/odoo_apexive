import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:odoo/features/timesheets/timesheets.dart';
import 'package:odoo/features/timesheets/view/timesheets_view.dart';

class TimesheetsPage extends StatelessWidget {
  const TimesheetsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => TimesheetsBloc(),
      child: const TimesheetsView(),
    );
  }
}
