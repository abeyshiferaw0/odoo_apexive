import 'package:app_ui/app_ui.dart';
import 'package:flutter/material.dart';
import 'package:odoo/core/routes/routes.dart';
import 'package:odoo/l10n/l10n.dart';

class App extends StatefulWidget {
  const App({super.key});

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  @override
  void initState() {
    /// Initialize the responsive sizes
    AppSpacing.init(context);

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.lightTheme(context),
      darkTheme: AppTheme.darkTheme(context),
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: goRouter,
    );
  }
}
