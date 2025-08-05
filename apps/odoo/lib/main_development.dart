import 'package:odoo/bootstrap.dart';
import 'package:odoo/core/di/injector.dart';
import 'package:odoo/core/utils/hydrated_bloc_util.dart';
import 'package:odoo/features/app/view/app.dart';

void main() async {
  // Initialize the storage for hydrated bloc
  await HydratedBlocUtil.instance.init();
  // Initialize the injector
  await initInjector();

  bootstrap(() => const App());
}
