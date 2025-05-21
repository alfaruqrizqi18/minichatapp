import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'core/app.dart';
import 'core/injection.dart';
import 'core/services/hive_service.dart';
import 'core/utils/print_log.dart';
import 'features/auth/providers/app_auth_provider.dart';
import 'features/chats/providers/chat_provider.dart';
import 'firebase_options.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      // init firebase
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      AppInjections().inject();

      await CosmoHive().init();

      runApp(
        MultiProvider(
          providers: [
            ChangeNotifierProvider(
              create: (_) => getInjection<AppAuthProvider>(),
            ),
            ChangeNotifierProvider(create: (_) => getInjection<ChatProvider>()),
          ],
          child: CosmoApp(),
        ),
      );
    },
    (error, stackTrace) async {
      printLog('runZonedGuarded error: $error, $stackTrace');
    },
  );
}
