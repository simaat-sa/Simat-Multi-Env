// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i17;
import 'package:flutter/material.dart' as _i18;
import 'package:flutter_tdd/features/auth/presentation/pages/active_account/active_account_imports.dart'
    as _i1;
import 'package:flutter_tdd/features/auth/presentation/pages/forget_password/forget_password_imports.dart'
    as _i7;
import 'package:flutter_tdd/features/auth/presentation/pages/get_code_info/get_code_info_imports.dart'
    as _i8;
import 'package:flutter_tdd/features/auth/presentation/pages/login/login_imports.dart'
    as _i10;
import 'package:flutter_tdd/features/auth/presentation/pages/reset_password/reset_password_imports.dart'
    as _i13;
import 'package:flutter_tdd/features/auth/presentation/pages/splash/splash_imports.dart'
    as _i14;
import 'package:flutter_tdd/features/auth/presentation/pages/verify_otp/verify_otp_imports.dart'
    as _i16;
import 'package:flutter_tdd/features/base/presentation/pages/home/home_imports.dart'
    as _i9;
import 'package:flutter_tdd/features/contract/data/models/contract_model/contract_model.dart'
    as _i20;
import 'package:flutter_tdd/features/contract/presentation/pages/contract_details/contract_details_imports.dart'
    as _i4;
import 'package:flutter_tdd/features/contract/presentation/pages/contract_screen/contract_screen_imports.dart'
    as _i21;
import 'package:flutter_tdd/features/contract/presentation/pages/filter_contract/filter_contract_imports.dart'
    as _i5;
import 'package:flutter_tdd/features/contract/presentation/pages/renew_contract_status/renew_contract_status_imports.dart'
    as _i12;
import 'package:flutter_tdd/features/general/presentation/pages/terms/terms_imports.dart'
    as _i15;
import 'package:flutter_tdd/features/maintenance/data/models/maintenance_model/maintenance_model.dart'
    as _i19;
import 'package:flutter_tdd/features/maintenance/presentation/pages/add_maintenance/add_maintenance_imports.dart'
    as _i2;
import 'package:flutter_tdd/features/maintenance/presentation/pages/add_maintenance_status/add_maintenance_status_imports.dart'
    as _i3;
import 'package:flutter_tdd/features/maintenance/presentation/pages/filter_maintenance/filter_maintenance_imports.dart'
    as _i6;
import 'package:flutter_tdd/features/maintenance/presentation/pages/maintenance_screen/maintenance_screen_imports.dart'
    as _i22;
import 'package:flutter_tdd/features/notification/presentation/pages/notices_screen/notices_screen_imports.dart'
    as _i11;

abstract class $AppRouter extends _i17.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i17.PageFactory> pagesMap = {
    ActiveAccount.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ActiveAccount(),
      );
    },
    AddMaintenanceRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.AddMaintenance(),
      );
    },
    CompleteAddMaintenanceRoute.name: (routeData) {
      final args = routeData.argsAs<CompleteAddMaintenanceRouteArgs>(
          orElse: () => const CompleteAddMaintenanceRouteArgs());
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.CompleteAddMaintenance(
          key: args.key,
          model: args.model,
        ),
      );
    },
    ContractDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ContractDetailsRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ContractDetails(
          key: args.key,
          model: args.model,
        ),
      );
    },
    FilterContractRoute.name: (routeData) {
      final args = routeData.argsAs<FilterContractRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.FilterContract(
          key: args.key,
          controller: args.controller,
        ),
      );
    },
    FilterMaintenanceRoute.name: (routeData) {
      final args = routeData.argsAs<FilterMaintenanceRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.FilterMaintenance(
          key: args.key,
          controller: args.controller,
        ),
      );
    },
    ForgetPassword.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.ForgetPassword(),
      );
    },
    GetCodeInfoRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.GetCodeInfo(),
      );
    },
    Home.name: (routeData) {
      final args = routeData.argsAs<HomeArgs>(orElse: () => const HomeArgs());
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i9.Home(
          key: args.key,
          index: args.index,
        ),
      );
    },
    Login.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.Login(),
      );
    },
    NoticesScreenRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i11.NoticesScreen(),
      );
    },
    RenewContractStatusRoute.name: (routeData) {
      final args = routeData.argsAs<RenewContractStatusRouteArgs>();
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i12.RenewContractStatus(
          key: args.key,
          success: args.success,
        ),
      );
    },
    ResetPassword.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.ResetPassword(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i14.Splash(),
      );
    },
    TermsRoute.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.Terms(),
      );
    },
    VerifyOTP.name: (routeData) {
      return _i17.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i16.VerifyOTP(),
      );
    },
  };
}

/// generated route for
/// [_i1.ActiveAccount]
class ActiveAccount extends _i17.PageRouteInfo<void> {
  const ActiveAccount({List<_i17.PageRouteInfo>? children})
      : super(
          ActiveAccount.name,
          initialChildren: children,
        );

  static const String name = 'ActiveAccount';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddMaintenance]
class AddMaintenanceRoute extends _i17.PageRouteInfo<void> {
  const AddMaintenanceRoute({List<_i17.PageRouteInfo>? children})
      : super(
          AddMaintenanceRoute.name,
          initialChildren: children,
        );

  static const String name = 'AddMaintenanceRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i3.CompleteAddMaintenance]
class CompleteAddMaintenanceRoute
    extends _i17.PageRouteInfo<CompleteAddMaintenanceRouteArgs> {
  CompleteAddMaintenanceRoute({
    _i18.Key? key,
    _i19.MaintenanceModel? model,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          CompleteAddMaintenanceRoute.name,
          args: CompleteAddMaintenanceRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'CompleteAddMaintenanceRoute';

  static const _i17.PageInfo<CompleteAddMaintenanceRouteArgs> page =
      _i17.PageInfo<CompleteAddMaintenanceRouteArgs>(name);
}

class CompleteAddMaintenanceRouteArgs {
  const CompleteAddMaintenanceRouteArgs({
    this.key,
    this.model,
  });

  final _i18.Key? key;

  final _i19.MaintenanceModel? model;

  @override
  String toString() {
    return 'CompleteAddMaintenanceRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i4.ContractDetails]
class ContractDetailsRoute
    extends _i17.PageRouteInfo<ContractDetailsRouteArgs> {
  ContractDetailsRoute({
    _i18.Key? key,
    required _i20.ContractModel model,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          ContractDetailsRoute.name,
          args: ContractDetailsRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'ContractDetailsRoute';

  static const _i17.PageInfo<ContractDetailsRouteArgs> page =
      _i17.PageInfo<ContractDetailsRouteArgs>(name);
}

class ContractDetailsRouteArgs {
  const ContractDetailsRouteArgs({
    this.key,
    required this.model,
  });

  final _i18.Key? key;

  final _i20.ContractModel model;

  @override
  String toString() {
    return 'ContractDetailsRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i5.FilterContract]
class FilterContractRoute extends _i17.PageRouteInfo<FilterContractRouteArgs> {
  FilterContractRoute({
    _i18.Key? key,
    required _i21.ContractScreenController controller,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          FilterContractRoute.name,
          args: FilterContractRouteArgs(
            key: key,
            controller: controller,
          ),
          initialChildren: children,
        );

  static const String name = 'FilterContractRoute';

  static const _i17.PageInfo<FilterContractRouteArgs> page =
      _i17.PageInfo<FilterContractRouteArgs>(name);
}

class FilterContractRouteArgs {
  const FilterContractRouteArgs({
    this.key,
    required this.controller,
  });

  final _i18.Key? key;

  final _i21.ContractScreenController controller;

  @override
  String toString() {
    return 'FilterContractRouteArgs{key: $key, controller: $controller}';
  }
}

/// generated route for
/// [_i6.FilterMaintenance]
class FilterMaintenanceRoute
    extends _i17.PageRouteInfo<FilterMaintenanceRouteArgs> {
  FilterMaintenanceRoute({
    _i18.Key? key,
    required _i22.MaintenanceController controller,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          FilterMaintenanceRoute.name,
          args: FilterMaintenanceRouteArgs(
            key: key,
            controller: controller,
          ),
          initialChildren: children,
        );

  static const String name = 'FilterMaintenanceRoute';

  static const _i17.PageInfo<FilterMaintenanceRouteArgs> page =
      _i17.PageInfo<FilterMaintenanceRouteArgs>(name);
}

class FilterMaintenanceRouteArgs {
  const FilterMaintenanceRouteArgs({
    this.key,
    required this.controller,
  });

  final _i18.Key? key;

  final _i22.MaintenanceController controller;

  @override
  String toString() {
    return 'FilterMaintenanceRouteArgs{key: $key, controller: $controller}';
  }
}

/// generated route for
/// [_i7.ForgetPassword]
class ForgetPassword extends _i17.PageRouteInfo<void> {
  const ForgetPassword({List<_i17.PageRouteInfo>? children})
      : super(
          ForgetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPassword';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i8.GetCodeInfo]
class GetCodeInfoRoute extends _i17.PageRouteInfo<void> {
  const GetCodeInfoRoute({List<_i17.PageRouteInfo>? children})
      : super(
          GetCodeInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'GetCodeInfoRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i9.Home]
class Home extends _i17.PageRouteInfo<HomeArgs> {
  Home({
    _i18.Key? key,
    int index = 0,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          Home.name,
          args: HomeArgs(
            key: key,
            index: index,
          ),
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i17.PageInfo<HomeArgs> page = _i17.PageInfo<HomeArgs>(name);
}

class HomeArgs {
  const HomeArgs({
    this.key,
    this.index = 0,
  });

  final _i18.Key? key;

  final int index;

  @override
  String toString() {
    return 'HomeArgs{key: $key, index: $index}';
  }
}

/// generated route for
/// [_i10.Login]
class Login extends _i17.PageRouteInfo<void> {
  const Login({List<_i17.PageRouteInfo>? children})
      : super(
          Login.name,
          initialChildren: children,
        );

  static const String name = 'Login';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i11.NoticesScreen]
class NoticesScreenRoute extends _i17.PageRouteInfo<void> {
  const NoticesScreenRoute({List<_i17.PageRouteInfo>? children})
      : super(
          NoticesScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'NoticesScreenRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i12.RenewContractStatus]
class RenewContractStatusRoute
    extends _i17.PageRouteInfo<RenewContractStatusRouteArgs> {
  RenewContractStatusRoute({
    _i18.Key? key,
    required bool success,
    List<_i17.PageRouteInfo>? children,
  }) : super(
          RenewContractStatusRoute.name,
          args: RenewContractStatusRouteArgs(
            key: key,
            success: success,
          ),
          initialChildren: children,
        );

  static const String name = 'RenewContractStatusRoute';

  static const _i17.PageInfo<RenewContractStatusRouteArgs> page =
      _i17.PageInfo<RenewContractStatusRouteArgs>(name);
}

class RenewContractStatusRouteArgs {
  const RenewContractStatusRouteArgs({
    this.key,
    required this.success,
  });

  final _i18.Key? key;

  final bool success;

  @override
  String toString() {
    return 'RenewContractStatusRouteArgs{key: $key, success: $success}';
  }
}

/// generated route for
/// [_i13.ResetPassword]
class ResetPassword extends _i17.PageRouteInfo<void> {
  const ResetPassword({List<_i17.PageRouteInfo>? children})
      : super(
          ResetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ResetPassword';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i14.Splash]
class SplashRoute extends _i17.PageRouteInfo<void> {
  const SplashRoute({List<_i17.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i15.Terms]
class TermsRoute extends _i17.PageRouteInfo<void> {
  const TermsRoute({List<_i17.PageRouteInfo>? children})
      : super(
          TermsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TermsRoute';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}

/// generated route for
/// [_i16.VerifyOTP]
class VerifyOTP extends _i17.PageRouteInfo<void> {
  const VerifyOTP({List<_i17.PageRouteInfo>? children})
      : super(
          VerifyOTP.name,
          initialChildren: children,
        );

  static const String name = 'VerifyOTP';

  static const _i17.PageInfo<void> page = _i17.PageInfo<void>(name);
}
