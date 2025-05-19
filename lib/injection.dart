// register AppRuter in GetIt
import 'package:get_it/get_it.dart';

import 'features/auth/providers/app_auth_provider.dart';
import 'routes/app_routing.dart';

class AppInjections {
  final injection = GetIt.instance;

  void inject() {
    injection.registerSingleton<AppRouter>(AppRouter());
    injection.registerSingleton<AppAuthProvider>(AppAuthProvider());
  }
}
