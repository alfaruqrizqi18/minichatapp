import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';

import '../routes/app_routing.dart';
import 'injection.dart';
import 'repositories/app_repository.dart';
import 'services/hive_service.dart';
import 'theme/color_schemes.dart';
import 'theme/text_theme.dart';

class CosmoApp extends StatefulWidget {
  const CosmoApp({super.key});

  @override
  State<CosmoApp> createState() => _CosmoAppState();
}

class _CosmoAppState extends State<CosmoApp> {
  final _appRouter = getInjection<AppRouter>();
  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
      valueListenable: CosmoHive.appBox.listenable(),
      builder: (context, _, _) {
        bool isDark = AppRepository.isDarkMode();
        return MaterialApp.router(
          theme: ThemeData(
            brightness: isDark ? Brightness.dark : Brightness.light,
            colorScheme:
                isDark
                    ? MaterialTheme().dark().colorScheme
                    : MaterialTheme().light().colorScheme,
            useMaterial3: true,
            textTheme: textTheme,
          ),
          routerConfig: _appRouter.config(),
          title: 'Mini Chat App',
          debugShowCheckedModeBanner: kDebugMode,
          builder: (BuildContext context, Widget? child) {
            return MediaQuery(
              data: MediaQuery.of(
                context,
              ).copyWith(textScaler: const TextScaler.linear(0.95)),
              child: child!,
            );
          },
        );
      },
    );
  }
}
