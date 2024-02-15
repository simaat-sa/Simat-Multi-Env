// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i12;
import 'package:flutter/material.dart' as _i13;
import 'package:flutter_tdd/features/auth/presentation/pages/active_account/active_account_imports.dart'
    as _i1;
import 'package:flutter_tdd/features/auth/presentation/pages/forget_password/forget_password_imports.dart'
    as _i5;
import 'package:flutter_tdd/features/auth/presentation/pages/login/login_imports.dart'
    as _i7;
import 'package:flutter_tdd/features/auth/presentation/pages/reset_password/reset_password_imports.dart'
    as _i8;
import 'package:flutter_tdd/features/auth/presentation/pages/splash/splash_imports.dart'
    as _i9;
import 'package:flutter_tdd/features/auth/presentation/pages/verify_otp/verify_otp_imports.dart'
    as _i11;
import 'package:flutter_tdd/features/base/presentation/pages/home/home_imports.dart'
    as _i6;
import 'package:flutter_tdd/features/contracts/presentation/pages/add_contract/add_contract_imports.dart'
    as _i2;
import 'package:flutter_tdd/features/contracts/presentation/pages/contract_screen/contract_screen_imports.dart'
    as _i14;
import 'package:flutter_tdd/features/contracts/presentation/pages/filter_contract/filter_contract_imports.dart'
    as _i3;
import 'package:flutter_tdd/features/general/presentation/pages/terms/terms_imports.dart'
    as _i10;
import 'package:flutter_tdd/features/tennat/presentation/pages/filter_tenant/filter_tenant_imports.dart'
    as _i4;
import 'package:flutter_tdd/features/tennat/presentation/pages/tennat_screen/tenant_screen_imports.dart'
    as _i15;

abstract class $AppRouter extends _i12.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i12.PageFactory> pagesMap = {
    ActiveAccount.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ActiveAccount(),
      );
    },
    AddContractRoute.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AddContract(),
      );
    },
    FilterContractRoute.name: (routeData) {
      final args = routeData.argsAs<FilterContractRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.FilterContract(
          key: args.key,
          controller: args.controller,
        ),
      );
    },
    FilterTenantRoute.name: (routeData) {
      final args = routeData.argsAs<FilterTenantRouteArgs>();
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.FilterTenant(
          key: args.key,
          controller: args.controller,
        ),
      );
    },
    ForgetPassword.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ForgetPassword(),
      );
    },
    Home.name: (routeData) {
      final args = routeData.argsAs<HomeArgs>(orElse: () => const HomeArgs());
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.Home(
          key: args.key,
          index: args.index,
        ),
      );
    },
    Login.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.Login(),
      );
    },
    ResetPassword.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ResetPassword(),
      );
    },
    Splash.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.Splash(),
      );
    },
    Terms.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.Terms(),
      );
    },
    VerifyOTP.name: (routeData) {
      return _i12.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.VerifyOTP(),
      );
    },
  };
}

/// generated route for
/// [_i1.ActiveAccount]
class ActiveAccount extends _i12.PageRouteInfo<void> {
  const ActiveAccount({List<_i12.PageRouteInfo>? children})
      : super(
          ActiveAccount.name,
          initialChildren: children,
        );

  static const String name = 'ActiveAccount';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddContract]
class AddContractRoute extends _i12.PageRouteInfo<void> {
  const AddContractRoute({List<_i12.PageRouteInfo>? children})
      : super(
          AddContractRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddContractRoute';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i3.FilterContract]
class FilterContractRoute extends _i12.PageRouteInfo<FilterContractRouteArgs> {
  FilterContractRoute({
    _i13.Key? key,
    required _i14.ContractController controller,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          FilterContractRoute.name,
          args: FilterContractRouteArgs(
            key: key,
            controller: controller,
          ),
          initialChildren: children,
        );

  static const String name = 'FilterContractRoute';

  static const _i12.PageInfo<FilterContractRouteArgs> page =
      _i12.PageInfo<FilterContractRouteArgs>(name);
}

class FilterContractRouteArgs {
  const FilterContractRouteArgs({
    this.key,
    required this.controller,
  });

  final _i13.Key? key;

  final _i14.ContractController controller;

  @override
  String toString() {
    return 'FilterContractRouteArgs{key: $key, controller: $controller}';
  }
}

/// generated route for
/// [_i4.FilterTenant]
class FilterTenantRoute extends _i12.PageRouteInfo<FilterTenantRouteArgs> {
  FilterTenantRoute({
    _i13.Key? key,
    required _i15.TenantScreenController controller,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          FilterTenantRoute.name,
          args: FilterTenantRouteArgs(
            key: key,
            controller: controller,
          ),
          initialChildren: children,
        );

  static const String name = 'FilterTenantRoute';

  static const _i12.PageInfo<FilterTenantRouteArgs> page =
      _i12.PageInfo<FilterTenantRouteArgs>(name);
}

class FilterTenantRouteArgs {
  const FilterTenantRouteArgs({
    this.key,
    required this.controller,
  });

  final _i13.Key? key;

  final _i15.TenantScreenController controller;

  @override
  String toString() {
    return 'FilterTenantRouteArgs{key: $key, controller: $controller}';
  }
}

/// generated route for
/// [_i5.ForgetPassword]
class ForgetPassword extends _i12.PageRouteInfo<void> {
  const ForgetPassword({List<_i12.PageRouteInfo>? children})
      : super(
          ForgetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPassword';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i6.Home]
class Home extends _i12.PageRouteInfo<HomeArgs> {
  Home({
    _i13.Key? key,
    int index = 0,
    List<_i12.PageRouteInfo>? children,
  }) : super(
          Home.name,
          args: HomeArgs(
            key: key,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i12.PageInfo<HomeArgs> page = _i12.PageInfo<HomeArgs>(name);
}

class HomeArgs {
  const HomeArgs({
    this.key,
    this.index = 0,
  });

  final _i13.Key? key;

  final int index;

  @override
  String toString() {
    return 'HomeArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i7.Login]
class Login extends _i12.PageRouteInfo<void> {
  const Login({List<_i12.PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i8.ResetPassword]
class ResetPassword extends _i12.PageRouteInfo<void> {
  const ResetPassword({List<_i12.PageRouteInfo>? children})
      : super(
          ResetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ResetPassword';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i9.Splash]
class Splash extends _i12.PageRouteInfo<void> {
  const Splash({List<_i12.PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i10.Terms]
class Terms extends _i12.PageRouteInfo<void> {
  const Terms({List<_i12.PageRouteInfo>? children})
      : super(
          Terms.name,
          initialChildren: children,
        );

  static const String name = 'Terms';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}

/// generated route for
/// [_i11.VerifyOTP]
class VerifyOTP extends _i12.PageRouteInfo<void> {
  const VerifyOTP({List<_i12.PageRouteInfo>? children})
      : super(
          VerifyOTP.name,
          initialChildren: children,
        );

  static const String name = 'VerifyOTP';

  static const _i12.PageInfo<void> page = _i12.PageInfo<void>(name);
}
