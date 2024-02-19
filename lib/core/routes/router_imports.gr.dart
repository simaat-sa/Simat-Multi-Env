// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i14;
import 'package:flutter/material.dart' as _i15;
import 'package:flutter_tdd/features/auth/presentation/pages/active_account/active_account_imports.dart'
    as _i1;
import 'package:flutter_tdd/features/auth/presentation/pages/forget_password/forget_password_imports.dart'
    as _i6;
import 'package:flutter_tdd/features/auth/presentation/pages/login/login_imports.dart'
    as _i8;
import 'package:flutter_tdd/features/auth/presentation/pages/reset_password/reset_password_imports.dart'
    as _i9;
import 'package:flutter_tdd/features/auth/presentation/pages/splash/splash_imports.dart'
    as _i10;
import 'package:flutter_tdd/features/auth/presentation/pages/verify_otp/verify_otp_imports.dart'
    as _i13;
import 'package:flutter_tdd/features/base/presentation/pages/home/home_imports.dart'
    as _i7;
import 'package:flutter_tdd/features/contracts/data/models/tennat_model/contract_model.dart'
    as _i16;
import 'package:flutter_tdd/features/contracts/presentation/pages/add_contract/add_contract_imports.dart'
    as _i2;
import 'package:flutter_tdd/features/contracts/presentation/pages/add_contract_status/add_contract_status_imports.dart'
    as _i3;
import 'package:flutter_tdd/features/contracts/presentation/pages/contract_screen/contract_screen_imports.dart'
    as _i17;
import 'package:flutter_tdd/features/contracts/presentation/pages/filter_contract/filter_contract_imports.dart'
    as _i4;
import 'package:flutter_tdd/features/general/presentation/pages/terms/terms_imports.dart'
    as _i12;
import 'package:flutter_tdd/features/tennat/data/models/tennat_model/tennat_model.dart'
    as _i19;
import 'package:flutter_tdd/features/tennat/presentation/pages/filter_tenant/filter_tenant_imports.dart'
    as _i5;
import 'package:flutter_tdd/features/tennat/presentation/pages/tenant_details/tenant_details_imports.dart'
    as _i11;
import 'package:flutter_tdd/features/tennat/presentation/pages/tennat_screen/tenant_screen_imports.dart'
    as _i18;

abstract class $AppRouter extends _i14.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i14.PageFactory> pagesMap = {
    ActiveAccount.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ActiveAccount(),
      );
    },
    AddContractRoute.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AddContract(),
      );
    },
    AddContractSuccessRoute.name: (routeData) {
      final args = routeData.argsAs<AddContractSuccessRouteArgs>(
          orElse: () => const AddContractSuccessRouteArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.CompleteAddContract(
          key: args.key,
          model: args.model,
        ),
      );
    },
    FilterContractRoute.name: (routeData) {
      final args = routeData.argsAs<FilterContractRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.FilterContract(
          key: args.key,
          controller: args.controller,
        ),
      );
    },
    FilterTenantRoute.name: (routeData) {
      final args = routeData.argsAs<FilterTenantRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.FilterTenant(
          key: args.key,
          controller: args.controller,
        ),
      );
    },
    ForgetPassword.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.ForgetPassword(),
      );
    },
    Home.name: (routeData) {
      final args = routeData.argsAs<HomeArgs>(orElse: () => const HomeArgs());
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.Home(
          key: args.key,
          index: args.index,
        ),
      );
    },
    Login.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.Login(),
      );
    },
    ResetPassword.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.ResetPassword(),
      );
    },
    Splash.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.Splash(),
      );
    },
    TenantDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<TenantDetailsRouteArgs>();
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.TenantDetails(
          key: args.key,
          model: args.model,
        ),
      );
    },
    Terms.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.Terms(),
      );
    },
    VerifyOTP.name: (routeData) {
      return _i14.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.VerifyOTP(),
      );
    },
  };
}

/// generated route for
/// [_i1.ActiveAccount]
class ActiveAccount extends _i14.PageRouteInfo<void> {
  const ActiveAccount({List<_i14.PageRouteInfo>? children})
      : super(
          ActiveAccount.name,
          initialChildren: children,
        );

  static const String name = 'ActiveAccount';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddContract]
class AddContractRoute extends _i14.PageRouteInfo<void> {
  const AddContractRoute({List<_i14.PageRouteInfo>? children})
      : super(
          AddContractRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddContractRoute';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CompleteAddContract]
class AddContractSuccessRoute
    extends _i14.PageRouteInfo<AddContractSuccessRouteArgs> {
  AddContractSuccessRoute({
    _i15.Key? key,
    _i16.ContractModel? model,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          AddContractSuccessRoute.name,
          args: AddContractSuccessRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'AddContractSuccessRoute';

  static const _i14.PageInfo<AddContractSuccessRouteArgs> page =
      _i14.PageInfo<AddContractSuccessRouteArgs>(name);
}

class AddContractSuccessRouteArgs {
  const AddContractSuccessRouteArgs({
    this.key,
    this.model,
  });

  final _i15.Key? key;

  final _i16.ContractModel? model;

  @override
  String toString() {
    return 'AddContractSuccessRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i4.FilterContract]
class FilterContractRoute extends _i14.PageRouteInfo<FilterContractRouteArgs> {
  FilterContractRoute({
    _i15.Key? key,
    required _i17.ContractController controller,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          FilterContractRoute.name,
          args: FilterContractRouteArgs(
            key: key,
            controller: controller,
          ),
          initialChildren: children,
        );

  static const String name = 'FilterContractRoute';

  static const _i14.PageInfo<FilterContractRouteArgs> page =
      _i14.PageInfo<FilterContractRouteArgs>(name);
}

class FilterContractRouteArgs {
  const FilterContractRouteArgs({
    this.key,
    required this.controller,
  });

  final _i15.Key? key;

  final _i17.ContractController controller;

  @override
  String toString() {
    return 'FilterContractRouteArgs{key: $key, controller: $controller}';
  }
}

/// generated route for
/// [_i5.FilterTenant]
class FilterTenantRoute extends _i14.PageRouteInfo<FilterTenantRouteArgs> {
  FilterTenantRoute({
    _i15.Key? key,
    required _i18.TenantScreenController controller,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          FilterTenantRoute.name,
          args: FilterTenantRouteArgs(
            key: key,
            controller: controller,
          ),
          initialChildren: children,
        );

  static const String name = 'FilterTenantRoute';

  static const _i14.PageInfo<FilterTenantRouteArgs> page =
      _i14.PageInfo<FilterTenantRouteArgs>(name);
}

class FilterTenantRouteArgs {
  const FilterTenantRouteArgs({
    this.key,
    required this.controller,
  });

  final _i15.Key? key;

  final _i18.TenantScreenController controller;

  @override
  String toString() {
    return 'FilterTenantRouteArgs{key: $key, controller: $controller}';
  }
}

/// generated route for
/// [_i6.ForgetPassword]
class ForgetPassword extends _i14.PageRouteInfo<void> {
  const ForgetPassword({List<_i14.PageRouteInfo>? children})
      : super(
          ForgetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPassword';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i7.Home]
class Home extends _i14.PageRouteInfo<HomeArgs> {
  Home({
    _i15.Key? key,
    int index = 0,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          Home.name,
          args: HomeArgs(
            key: key,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i14.PageInfo<HomeArgs> page = _i14.PageInfo<HomeArgs>(name);
}

class HomeArgs {
  const HomeArgs({
    this.key,
    this.index = 0,
  });

  final _i15.Key? key;

  final int index;

  @override
  String toString() {
    return 'HomeArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i8.Login]
class Login extends _i14.PageRouteInfo<void> {
  const Login({List<_i14.PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i9.ResetPassword]
class ResetPassword extends _i14.PageRouteInfo<void> {
  const ResetPassword({List<_i14.PageRouteInfo>? children})
      : super(
          ResetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ResetPassword';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i10.Splash]
class Splash extends _i14.PageRouteInfo<void> {
  const Splash({List<_i14.PageRouteInfo>? children})
      : super(
          Splash.name,
          initialChildren: children,
        );

  static const String name = 'Splash';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i11.TenantDetails]
class TenantDetailsRoute extends _i14.PageRouteInfo<TenantDetailsRouteArgs> {
  TenantDetailsRoute({
    _i15.Key? key,
    required _i19.TenantModel model,
    List<_i14.PageRouteInfo>? children,
  }) : super(
          TenantDetailsRoute.name,
          args: TenantDetailsRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'TenantDetailsRoute';

  static const _i14.PageInfo<TenantDetailsRouteArgs> page =
      _i14.PageInfo<TenantDetailsRouteArgs>(name);
}

class TenantDetailsRouteArgs {
  const TenantDetailsRouteArgs({
    this.key,
    required this.model,
  });

  final _i15.Key? key;

  final _i19.TenantModel model;

  @override
  String toString() {
    return 'TenantDetailsRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i12.Terms]
class Terms extends _i14.PageRouteInfo<void> {
  const Terms({List<_i14.PageRouteInfo>? children})
      : super(
          Terms.name,
          initialChildren: children,
        );

  static const String name = 'Terms';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}

/// generated route for
/// [_i13.VerifyOTP]
class VerifyOTP extends _i14.PageRouteInfo<void> {
  const VerifyOTP({List<_i14.PageRouteInfo>? children})
      : super(
          VerifyOTP.name,
          initialChildren: children,
        );

  static const String name = 'VerifyOTP';

  static const _i14.PageInfo<void> page = _i14.PageInfo<void>(name);
}
