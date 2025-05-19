import 'package:auto_route/auto_route.dart';

import 'app_routing.gr.dart';

@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends RootStackRouter {
  final transition = TransitionsBuilders.fadeIn;
  @override
  List<AutoRoute> get routes => [
    CustomRoute(
      page: SplashRoute.page,
      transitionsBuilder: transition,
      initial: true,
    ),
    CustomRoute(page: SignInRoute.page, transitionsBuilder: transition),
    CustomRoute(page: LandingRoute.page, transitionsBuilder: transition),
  ];
}
