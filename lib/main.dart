import 'dart:async';

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:minichatapp/core/utils/print_log.dart';
import 'package:minichatapp/firebase_options.dart';
import 'package:provider/provider.dart';

void main() {
  runZonedGuarded(
    () async {
      WidgetsFlutterBinding.ensureInitialized();

      // register AppRuter in GetIt
      // GetIt.instance.registerSingleton<AppRouter>(AppRouter());

      // init firebase
      await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform,
      );

      // runApp
      runApp(MultiProvider(providers: [], child: Container()));
    },
    (error, stackTrace) async {
      printLog('runZonedGuarded error: $error, $stackTrace');
    },
  );
}
