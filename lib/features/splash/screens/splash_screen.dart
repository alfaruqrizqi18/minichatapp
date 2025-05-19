import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/extensions/style_extension.dart';
import '../../../core/repositories/app_repository.dart';
import '../../../routes/app_routing.gr.dart';

@RoutePage()
class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      Future.delayed(const Duration(seconds: 1), () async {
        if (AppRepository.isLoggedIn()) {
          if (mounted) {
            context.router.replaceAll([LandingRoute()]);
          }
        } else {
          if (mounted) {
            context.router.replaceAll([SignInRoute()]);
          }
        }
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Hero(
          tag: 'logo',
          child: FlutterLogo(size: 60, textColor: context.primaryColor),
        ),
      ),
      bottomNavigationBar: SizedBox(
        height: 60,
        child: Center(
          child: Text(
            "Mini Chat App",
            style: context.bodyMedium?.copyWith(
              color: context.onSurfaceColor.withValues(alpha: .4),
            ),
          ),
        ),
      ),
    );
  }
}
