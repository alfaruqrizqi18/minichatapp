import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'app.dart';
import 'core/services/hive_service.dart';
import 'core/utils/print_log.dart';
import 'features/auth/providers/app_auth_provider.dart';
import 'firebase_options.dart';
import 'injection.dart';

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
              create: (_) => AppInjections().injection.get<AppAuthProvider>(),
            ),
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
