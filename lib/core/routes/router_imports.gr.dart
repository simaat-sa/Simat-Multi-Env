// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;
import 'package:flutter_tdd/features/auth/presentation/pages/active_account/active_account_imports.dart'
    as _i1;
import 'package:flutter_tdd/features/auth/presentation/pages/forget_password/forget_password_imports.dart'
    as _i2;
import 'package:flutter_tdd/features/auth/presentation/pages/login/login_imports.dart'
    as _i4;
import 'package:flutter_tdd/features/auth/presentation/pages/reset_password/reset_password_imports.dart'
    as _i5;
import 'package:flutter_tdd/features/auth/presentation/pages/splash/splash_imports.dart'
    as _i6;
import 'package:flutter_tdd/features/auth/presentation/pages/verify_otp/verify_otp_imports.dart'
    as _i8;
import 'package:flutter_tdd/features/base/presentation/pages/home/home_imports.dart'
    as _i3;
import 'package:flutter_tdd/features/general/presentation/pages/terms/terms_imports.dart'
    as _i7;

abstract class $AppRouter extends _i9.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    ActiveAccount.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ActiveAccount(),
      );
    },
    ForgetPassword.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.ForgetPassword(),
      );
    },
    Home.name: (routeData) {
      final args = routeData.argsAs<HomeArgs>(orElse: () => const HomeArgs());
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.Home(
          key: args.key,
          index: args.index,
        ),
      );
    },
    Login.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.Login(),
      );
    },
    ResetPassword.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ResetPassword(),
      );
    },
    Splash.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.Splash(),
      );
    },
    Terms.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.Terms(),
      );
    },
    VerifyOTP.name: (routeData) {
      return _i9.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.VerifyOTP(),
      );
    },
  };
}

/// generated route for
/// [_i1.ActiveAccount]
class ActiveAccount extends _i9.PageRouteInfo<void> {
  const ActiveAccount({List<_i9.PageRouteInfo>? children})
      : super(
          ActiveAccount.name,
          initialChildren: children,
        );

  static const String name = 'ActiveAccount';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i2.ForgetPassword]
class ForgetPassword extends _i9.PageRouteInfo<void> {
  const ForgetPassword({List<_i9.PageRouteInfo>? children})
      : super(
          ForgetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPassword';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i3.Home]
class Home extends _i9.PageRouteInfo<HomeArgs> {
  Home({
    _i10.Key? key,
    int index = 0,
    List<_i9.PageRouteInfo>? children,
  }) : super(
          Home.name,
          args: HomeArgs(
            key: key,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i9.PageInfo<HomeArgs> page = _i9.PageInfo<HomeArgs>(name);
}

class HomeArgs {
  const HomeArgs({
    this.key,
    this.index = 0,
  });

  final _i10.Key? key;

  final int index;

  @override
  String toString() {
    return 'HomeArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i4.Login]
class Login extends _i9.PageRouteInfo<void> {
  const Login({List<_i9.PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ResetPassword]
class ResetPassword extends _i9.PageRouteInfo<void> {
  const ResetPassword({List<_i9.PageRouteInfo>? children})
      : super(
          ResetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ResetPassword';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i6.Splash]
class Splash extends _i9.PageRouteInfo<void> {
  const Splash({List<_i9.PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i7.Terms]
class Terms extends _i9.PageRouteInfo<void> {
  const Terms({List<_i9.PageRouteInfo>? children})
      : super(
          Terms.name,
          initialChildren: children,
        );

  static const String name = 'Terms';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}

/// generated route for
/// [_i8.VerifyOTP]
class VerifyOTP extends _i9.PageRouteInfo<void> {
  const VerifyOTP({List<_i9.PageRouteInfo>? children})
      : super(
          VerifyOTP.name,
          initialChildren: children,
        );

  static const String name = 'VerifyOTP';

  static const _i9.PageInfo<void> page = _i9.PageInfo<void>(name);
}
