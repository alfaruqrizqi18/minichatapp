import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import '../../../core/extensions/style_extension.dart';
import '../../../routes/app_routing.gr.dart';

@RoutePage()
class LandingScreen extends StatefulWidget {
  const LandingScreen({super.key});

  @override
  State<LandingScreen> createState() => _LandingScreenState();
}

class _LandingScreenState extends State<LandingScreen> {
  ValueNotifier<int> activeIndex = ValueNotifier(0);
  final pages = [
    (route: ChatRoute(), icon: Icon(Icons.home), title: "Chat Room"),
    (route: SettingRoute(), icon: Icon(Icons.settings), title: "Settings"),
  ];
  @override
  Widget build(BuildContext context) {
    return AutoTabsRouter(
      routes: pages.map((e) => e.route).toList(),
      transitionBuilder:
          (context, child, animation) =>
              FadeTransition(opacity: animation, child: child),
      builder: (context, child) {
        final tabsRouter = AutoTabsRouter.of(context);
        return Scaffold(
          body: child,
          bottomNavigationBar: BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            elevation: 10,
            selectedItemColor: context.primaryColor,
            unselectedItemColor: context.outlineColor,
            selectedLabelStyle: context.bodyMedium?.copyWith(
              fontWeight: FontWeight.bold,
            ),
            unselectedLabelStyle: context.bodyMedium?.copyWith(
              fontWeight: FontWeight.w500,
            ),
            onTap: (index) {
              tabsRouter.setActiveIndex(index);
            },
            type: BottomNavigationBarType.fixed,
            useLegacyColorScheme: true,
            items:
                pages.map((e) {
                  return BottomNavigationBarItem(icon: e.icon, label: e.title);
                }).toList(),
          ),
        );
      },
    );
  }
}
