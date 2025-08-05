import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:hydrated_bloc/hydrated_bloc.dart';
import 'package:path_provider/path_provider.dart';

class HydratedBlocUtil {
  HydratedBlocUtil._(); // Private constructor

  static final HydratedBlocUtil instance = HydratedBlocUtil._();

  bool _isInitialized = false;

  /// Initializes the HydratedBloc storage
  Future<void> init() async {
    if (_isInitialized) return;

    // Initialize the storage for hydrated bloc
    WidgetsFlutterBinding.ensureInitialized();
    HydratedBloc.storage = await HydratedStorage.build(
      storageDirectory: kIsWeb
          ? HydratedStorageDirectory.web
          : HydratedStorageDirectory((await getTemporaryDirectory()).path),
    );

    _isInitialized = true;
  }
}
