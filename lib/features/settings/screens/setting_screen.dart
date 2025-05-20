import 'dart:async';

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:hive_ce_flutter/hive_flutter.dart';
import 'package:provider/provider.dart';

import '../../../core/extensions/style_extension.dart';
import '../../../core/repositories/app_repository.dart';
import '../../../core/services/hive_service.dart';
import '../../../core/utils/utils.dart';
import '../../../core/widgets/app_bar/app_bar_v1.dart';
import '../../../core/widgets/buttons/cosmo_filled_button.dart';
import '../../../core/widgets/buttons/cosmo_text_button.dart';
import '../../../routes/app_routing.gr.dart';
import '../../auth/providers/app_auth_provider.dart';

@RoutePage()
class SettingScreen extends StatefulWidget {
  const SettingScreen({super.key});

  @override
  State<SettingScreen> createState() => _SettingScreenState();
}

class _SettingScreenState extends State<SettingScreen> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CosmoAppBar(
        title: "Setting",
        actions: [
          CosmoTextButton(
            onPressed: () {
              openLogoutDialog(context);
            },
            title: "Logout",
            textColor: context.errorColor,
          ),
        ],
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.symmetric(
          horizontal: generalPaddingHorizontal,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Misc",
              style: context.titleLarge?.copyWith(
                fontWeight: FontWeight.bold,
                color: context.onSurfaceColor,
              ),
            ),
            vSpace(5),

            ValueListenableBuilder(
              valueListenable: CosmoHive.appBox.listenable(),
              builder: (context, box, _) {
                return SwitchListTile(
                  contentPadding: EdgeInsets.zero,
                  value: AppRepository.isDarkMode() ? true : false,
                  title: Text("Dark mode", style: context.bodyLarge),
                  subtitle: Text(
                    "Can reduce eye strain and save battery life on devices",
                    style: context.bodySmall,
                  ),
                  onChanged: (val) {
                    AppRepository.setDarkMode(useDarkMode: val);
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }

  Future<void> openLogoutDialog(BuildContext context) {
    return showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(
            "Logout",
            style: context.titleLarge?.copyWith(fontWeight: FontWeight.bold),
          ),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Are you sure want to logout?", style: context.titleMedium),
              vSpace(10),
            ],
          ),
          actions: [
            CosmoTextButton(
              onPressed: () {
                Navigator.pop(context);
                context.read<AppAuthProvider>().signOut();
                context.router.replaceAll([SplashRoute()]);
              },
              title: Text(
                "Logout",
                style: context.bodyMedium?.copyWith(
                  fontSize: 15,
                  color: context.errorColor,
                ),
              ),
            ),
            CosmoFilledButton(
              onPressed: () {
                Navigator.pop(context);
              },
              title: "Maybe later",
            ),
          ],
        );
      },
    );
  }
}
