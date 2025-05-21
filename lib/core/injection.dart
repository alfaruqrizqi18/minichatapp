// register AppRuter in GetIt
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get_it/get_it.dart';

import '../features/auth/providers/app_auth_provider.dart';
import '../features/chats/providers/chat_provider.dart';
import '../routes/app_routing.dart';

class AppInjections {
  final injection = GetIt.instance;

  void inject() {
    injection.registerSingleton<AppRouter>(AppRouter());
    injection.registerSingleton<AppAuthProvider>(AppAuthProvider());
    injection.registerSingleton<ChatProvider>(ChatProvider());
    injection.registerSingleton<FirebaseFirestore>(FirebaseFirestore.instance);
  }
}

T getInjection<T extends Object>() {
  return GetIt.instance.get<T>();
}
