// dart format width=80
// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:minichatapp/features/auth/screens/sign_in_screen.dart' as _i2;
import 'package:minichatapp/features/landing/screens/landing_screen.dart'
    as _i1;
import 'package:minichatapp/features/splash/screens/splash_screen.dart' as _i3;

/// generated route for
/// [_i1.LandingScreen]
class LandingRoute extends _i4.PageRouteInfo<void> {
  const LandingRoute({List<_i4.PageRouteInfo>? children})
    : super(LandingRoute.name, initialChildren: children);

  static const String name = 'LandingRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i1.LandingScreen();
    },
  );
}

/// generated route for
/// [_i2.SignInScreen]
class SignInRoute extends _i4.PageRouteInfo<void> {
  const SignInRoute({List<_i4.PageRouteInfo>? children})
    : super(SignInRoute.name, initialChildren: children);

  static const String name = 'SignInRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i2.SignInScreen();
    },
  );
}

/// generated route for
/// [_i3.SplashScreen]
class SplashRoute extends _i4.PageRouteInfo<void> {
  const SplashRoute({List<_i4.PageRouteInfo>? children})
    : super(SplashRoute.name, initialChildren: children);

  static const String name = 'SplashRoute';

  static _i4.PageInfo page = _i4.PageInfo(
    name,
    builder: (data) {
      return const _i3.SplashScreen();
    },
  );
}
