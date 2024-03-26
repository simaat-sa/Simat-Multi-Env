// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i21;
import 'package:flutter/material.dart' as _i22;
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart'
    as _i28;
import 'package:flutter_tdd/features/auth/presentation/pages/active_account/active_account_imports.dart'
    as _i1;
import 'package:flutter_tdd/features/auth/presentation/pages/forget_password/forget_password_imports.dart'
    as _i8;
import 'package:flutter_tdd/features/auth/presentation/pages/get_code_info/get_code_info_imports.dart'
    as _i9;
import 'package:flutter_tdd/features/auth/presentation/pages/login/login_imports.dart'
    as _i11;
import 'package:flutter_tdd/features/auth/presentation/pages/register/register_imports.dart'
    as _i15;
import 'package:flutter_tdd/features/auth/presentation/pages/reset_password/reset_password_imports.dart'
    as _i17;
import 'package:flutter_tdd/features/auth/presentation/pages/splash/splash_imports.dart'
    as _i18;
import 'package:flutter_tdd/features/auth/presentation/pages/verify_otp/verify_otp_imports.dart'
    as _i20;
import 'package:flutter_tdd/features/base/presentation/pages/home/home_imports.dart'
    as _i10;
import 'package:flutter_tdd/features/contract/data/models/contract_model/contract_model.dart'
    as _i25;
import 'package:flutter_tdd/features/contract/data/models/props_model/prop_model.dart'
    as _i23;
import 'package:flutter_tdd/features/contract/presentation/pages/contract_details/contract_details_imports.dart'
    as _i4;
import 'package:flutter_tdd/features/contract/presentation/pages/contract_screen/contract_screen_imports.dart'
    as _i26;
import 'package:flutter_tdd/features/contract/presentation/pages/filter_contract/filter_contract_imports.dart'
    as _i5;
import 'package:flutter_tdd/features/contract/presentation/pages/renew_contract_status/renew_contract_status_imports.dart'
    as _i16;
import 'package:flutter_tdd/features/general/presentation/pages/terms/terms_imports.dart'
    as _i19;
import 'package:flutter_tdd/features/maintenance/data/models/maintenance_model/maintenance_model.dart'
    as _i24;
import 'package:flutter_tdd/features/maintenance/presentation/pages/add_maintenance/add_maintenance_imports.dart'
    as _i2;
import 'package:flutter_tdd/features/maintenance/presentation/pages/add_maintenance_status/add_maintenance_status_imports.dart'
    as _i3;
import 'package:flutter_tdd/features/maintenance/presentation/pages/filter_maintenance/filter_maintenance_imports.dart'
    as _i6;
import 'package:flutter_tdd/features/maintenance/presentation/pages/maintenance_screen/maintenance_screen_imports.dart'
    as _i27;
import 'package:flutter_tdd/features/notification/presentation/pages/notices_screen/notices_screen_imports.dart'
    as _i12;
import 'package:flutter_tdd/features/owner_properties/presentation/pages/filter_property/filter_property_imports.dart'
    as _i7;
import 'package:flutter_tdd/features/owner_properties/presentation/pages/paymen_filter/payment_filter_imports.dart'
    as _i13;
import 'package:flutter_tdd/features/owner_properties/presentation/pages/property_details/property_details_imports.dart'
    as _i14;

abstract class $AppRouter extends _i21.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i21.PageFactory> pagesMap = {
    ActiveAccount.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ActiveAccount(),
      );
    },
    AddMaintenanceRoute.name: (routeData) {
      final args = routeData.argsAs<AddMaintenanceRouteArgs>(
          orElse: () => const AddMaintenanceRouteArgs());
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i2.AddMaintenance(
          key: args.key,
          propModel: args.propModel,
        ),
      );
    },
    CompleteAddMaintenanceRoute.name: (routeData) {
      final args = routeData.argsAs<CompleteAddMaintenanceRouteArgs>(
          orElse: () => const CompleteAddMaintenanceRouteArgs());
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.CompleteAddMaintenance(
          key: args.key,
          model: args.model,
        ),
      );
    },
    ContractDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<ContractDetailsRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.ContractDetails(
          key: args.key,
          model: args.model,
        ),
      );
    },
    FilterContractRoute.name: (routeData) {
      final args = routeData.argsAs<FilterContractRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i5.FilterContract(
          key: args.key,
          controller: args.controller,
        ),
      );
    },
    FilterMaintenanceRoute.name: (routeData) {
      final args = routeData.argsAs<FilterMaintenanceRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.FilterMaintenance(
          key: args.key,
          controller: args.controller,
        ),
      );
    },
    FilterPropertyRoute.name: (routeData) {
      final args = routeData.argsAs<FilterPropertyRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i7.FilterProperty(
          key: args.key,
          filterController: args.filterController,
        ),
      );
    },
    ForgetPassword.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.ForgetPassword(),
      );
    },
    GetCodeInfoRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.GetCodeInfo(),
      );
    },
    Home.name: (routeData) {
      final args = routeData.argsAs<HomeArgs>(orElse: () => const HomeArgs());
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i10.Home(
          key: args.key,
          index: args.index,
          loginParams: args.loginParams,
        ),
      );
    },
    Login.name: (routeData) {
      final args = routeData.argsAs<LoginArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.Login(
          key: args.key,
          checkRegisterButton: args.checkRegisterButton,
        ),
      );
    },
    NoticesScreenRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.NoticesScreen(),
      );
    },
    PaymentFilterRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i13.PaymentFilter(),
      );
    },
    PropertyDetailsRoute.name: (routeData) {
      final args = routeData.argsAs<PropertyDetailsRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i14.PropertyDetails(
          key: args.key,
          model: args.model,
        ),
      );
    },
    RegisterRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i15.Register(),
      );
    },
    RenewContractStatusRoute.name: (routeData) {
      final args = routeData.argsAs<RenewContractStatusRouteArgs>();
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i16.RenewContractStatus(
          key: args.key,
          success: args.success,
        ),
      );
    },
    ResetPassword.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i17.ResetPassword(),
      );
    },
    SplashRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i18.Splash(),
      );
    },
    TermsRoute.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i19.Terms(),
      );
    },
    VerifyOTP.name: (routeData) {
      return _i21.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i20.VerifyOTP(),
      );
    },
  };
}

/// generated route for
/// [_i1.ActiveAccount]
class ActiveAccount extends _i21.PageRouteInfo<void> {
  const ActiveAccount({List<_i21.PageRouteInfo>? children})
      : super(
          ActiveAccount.name,
          initialChildren: children,
        );

  static const String name = 'ActiveAccount';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i2.AddMaintenance]
class AddMaintenanceRoute extends _i21.PageRouteInfo<AddMaintenanceRouteArgs> {
  AddMaintenanceRoute({
    _i22.Key? key,
    _i23.PropModel? propModel,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          AddMaintenanceRoute.name,
          args: AddMaintenanceRouteArgs(
            key: key,
            propModel: propModel,
          ),
          initialChildren: children,
        );

  static const String name = 'AddMaintenanceRoute';

  static const _i21.PageInfo<AddMaintenanceRouteArgs> page =
      _i21.PageInfo<AddMaintenanceRouteArgs>(name);
}

class AddMaintenanceRouteArgs {
  const AddMaintenanceRouteArgs({
    this.key,
    this.propModel,
  });

  final _i22.Key? key;

  final _i23.PropModel? propModel;

  @override
  String toString() {
    return 'AddMaintenanceRouteArgs{key: $key, propModel: $propModel}';
  }
}

/// generated route for
/// [_i3.CompleteAddMaintenance]
class CompleteAddMaintenanceRoute
    extends _i21.PageRouteInfo<CompleteAddMaintenanceRouteArgs> {
  CompleteAddMaintenanceRoute({
    _i22.Key? key,
    _i24.MaintenanceModel? model,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          CompleteAddMaintenanceRoute.name,
          args: CompleteAddMaintenanceRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'CompleteAddMaintenanceRoute';

  static const _i21.PageInfo<CompleteAddMaintenanceRouteArgs> page =
      _i21.PageInfo<CompleteAddMaintenanceRouteArgs>(name);
}

class CompleteAddMaintenanceRouteArgs {
  const CompleteAddMaintenanceRouteArgs({
    this.key,
    this.model,
  });

  final _i22.Key? key;

  final _i24.MaintenanceModel? model;

  @override
  String toString() {
    return 'CompleteAddMaintenanceRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i4.ContractDetails]
class ContractDetailsRoute
    extends _i21.PageRouteInfo<ContractDetailsRouteArgs> {
  ContractDetailsRoute({
    _i22.Key? key,
    required _i25.ContractModel model,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          ContractDetailsRoute.name,
          args: ContractDetailsRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'ContractDetailsRoute';

  static const _i21.PageInfo<ContractDetailsRouteArgs> page =
      _i21.PageInfo<ContractDetailsRouteArgs>(name);
}

class ContractDetailsRouteArgs {
  const ContractDetailsRouteArgs({
    this.key,
    required this.model,
  });

  final _i22.Key? key;

  final _i25.ContractModel model;

  @override
  String toString() {
    return 'ContractDetailsRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i5.FilterContract]
class FilterContractRoute extends _i21.PageRouteInfo<FilterContractRouteArgs> {
  FilterContractRoute({
    _i22.Key? key,
    required _i26.ContractScreenController controller,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          FilterContractRoute.name,
          args: FilterContractRouteArgs(
            key: key,
            controller: controller,
          ),
          initialChildren: children,
        );

  static const String name = 'FilterContractRoute';

  static const _i21.PageInfo<FilterContractRouteArgs> page =
      _i21.PageInfo<FilterContractRouteArgs>(name);
}

class FilterContractRouteArgs {
  const FilterContractRouteArgs({
    this.key,
    required this.controller,
  });

  final _i22.Key? key;

  final _i26.ContractScreenController controller;

  @override
  String toString() {
    return 'FilterContractRouteArgs{key: $key, controller: $controller}';
  }
}

/// generated route for
/// [_i6.FilterMaintenance]
class FilterMaintenanceRoute
    extends _i21.PageRouteInfo<FilterMaintenanceRouteArgs> {
  FilterMaintenanceRoute({
    _i22.Key? key,
    required _i27.MaintenanceController controller,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          FilterMaintenanceRoute.name,
          args: FilterMaintenanceRouteArgs(
            key: key,
            controller: controller,
          ),
          initialChildren: children,
        );

  static const String name = 'FilterMaintenanceRoute';

  static const _i21.PageInfo<FilterMaintenanceRouteArgs> page =
      _i21.PageInfo<FilterMaintenanceRouteArgs>(name);
}

class FilterMaintenanceRouteArgs {
  const FilterMaintenanceRouteArgs({
    this.key,
    required this.controller,
  });

  final _i22.Key? key;

  final _i27.MaintenanceController controller;

  @override
  String toString() {
    return 'FilterMaintenanceRouteArgs{key: $key, controller: $controller}';
  }
}

/// generated route for
/// [_i7.FilterProperty]
class FilterPropertyRoute extends _i21.PageRouteInfo<FilterPropertyRouteArgs> {
  FilterPropertyRoute({
    _i22.Key? key,
    required _i7.FilterPropertyController filterController,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          FilterPropertyRoute.name,
          args: FilterPropertyRouteArgs(
            key: key,
            filterController: filterController,
          ),
          initialChildren: children,
        );

  static const String name = 'FilterPropertyRoute';

  static const _i21.PageInfo<FilterPropertyRouteArgs> page =
      _i21.PageInfo<FilterPropertyRouteArgs>(name);
}

class FilterPropertyRouteArgs {
  const FilterPropertyRouteArgs({
    this.key,
    required this.filterController,
  });

  final _i22.Key? key;

  final _i7.FilterPropertyController filterController;

  @override
  String toString() {
    return 'FilterPropertyRouteArgs{key: $key, filterController: $filterController}';
  }
}

/// generated route for
/// [_i8.ForgetPassword]
class ForgetPassword extends _i21.PageRouteInfo<void> {
  const ForgetPassword({List<_i21.PageRouteInfo>? children})
      : super(
          ForgetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ForgetPassword';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i9.GetCodeInfo]
class GetCodeInfoRoute extends _i21.PageRouteInfo<void> {
  const GetCodeInfoRoute({List<_i21.PageRouteInfo>? children})
      : super(
          GetCodeInfoRoute.name,
          initialChildren: children,
        );

  static const String name = 'GetCodeInfoRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i10.Home]
class Home extends _i21.PageRouteInfo<HomeArgs> {
  Home({
    _i22.Key? key,
    int index = 0,
    _i28.LoginParams? loginParams,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          Home.name,
          args: HomeArgs(
            key: key,
            index: index,
            loginParams: loginParams,
          ),
          initialChildren: children,
        );

  static const String name = 'Home';

  static const _i21.PageInfo<HomeArgs> page = _i21.PageInfo<HomeArgs>(name);
}

class HomeArgs {
  const HomeArgs({
    this.key,
    this.index = 0,
    this.loginParams,
  });

  final _i22.Key? key;

  final int index;

  final _i28.LoginParams? loginParams;

  @override
  String toString() {
    return 'HomeArgs{key: $key, index: $index, loginParams: $loginParams}';
  }
}

/// generated route for
/// [_i11.Login]
class Login extends _i21.PageRouteInfo<LoginArgs> {
  Login({
    _i22.Key? key,
    required bool checkRegisterButton,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          Login.name,
          args: LoginArgs(
            key: key,
            checkRegisterButton: checkRegisterButton,
          ),
          initialChildren: children,
        );

  static const String name = 'Login';

  static const _i21.PageInfo<LoginArgs> page = _i21.PageInfo<LoginArgs>(name);
}

class LoginArgs {
  const LoginArgs({
    this.key,
    required this.checkRegisterButton,
  });

  final _i22.Key? key;

  final bool checkRegisterButton;

  @override
  String toString() {
    return 'LoginArgs{key: $key, checkRegisterButton: $checkRegisterButton}';
  }
}

/// generated route for
/// [_i12.NoticesScreen]
class NoticesScreenRoute extends _i21.PageRouteInfo<void> {
  const NoticesScreenRoute({List<_i21.PageRouteInfo>? children})
      : super(
          NoticesScreenRoute.name,
          initialChildren: children,
        );

  static const String name = 'NoticesScreenRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i13.PaymentFilter]
class PaymentFilterRoute extends _i21.PageRouteInfo<void> {
  const PaymentFilterRoute({List<_i21.PageRouteInfo>? children})
      : super(
          PaymentFilterRoute.name,
          initialChildren: children,
        );

  static const String name = 'PaymentFilterRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i14.PropertyDetails]
class PropertyDetailsRoute
    extends _i21.PageRouteInfo<PropertyDetailsRouteArgs> {
  PropertyDetailsRoute({
    _i22.Key? key,
    required _i23.PropModel model,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          PropertyDetailsRoute.name,
          args: PropertyDetailsRouteArgs(
            key: key,
            model: model,
          ),
          initialChildren: children,
        );

  static const String name = 'PropertyDetailsRoute';

  static const _i21.PageInfo<PropertyDetailsRouteArgs> page =
      _i21.PageInfo<PropertyDetailsRouteArgs>(name);
}

class PropertyDetailsRouteArgs {
  const PropertyDetailsRouteArgs({
    this.key,
    required this.model,
  });

  final _i22.Key? key;

  final _i23.PropModel model;

  @override
  String toString() {
    return 'PropertyDetailsRouteArgs{key: $key, model: $model}';
  }
}

/// generated route for
/// [_i15.Register]
class RegisterRoute extends _i21.PageRouteInfo<void> {
  const RegisterRoute({List<_i21.PageRouteInfo>? children})
      : super(
          RegisterRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegisterRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i16.RenewContractStatus]
class RenewContractStatusRoute
    extends _i21.PageRouteInfo<RenewContractStatusRouteArgs> {
  RenewContractStatusRoute({
    _i22.Key? key,
    required bool success,
    List<_i21.PageRouteInfo>? children,
  }) : super(
          RenewContractStatusRoute.name,
          args: RenewContractStatusRouteArgs(
            key: key,
            success: success,
          ),
          initialChildren: children,
        );

  static const String name = 'RenewContractStatusRoute';

  static const _i21.PageInfo<RenewContractStatusRouteArgs> page =
      _i21.PageInfo<RenewContractStatusRouteArgs>(name);
}

class RenewContractStatusRouteArgs {
  const RenewContractStatusRouteArgs({
    this.key,
    required this.success,
  });

  final _i22.Key? key;

  final bool success;

  @override
  String toString() {
    return 'RenewContractStatusRouteArgs{key: $key, success: $success}';
  }
}

/// generated route for
/// [_i17.ResetPassword]
class ResetPassword extends _i21.PageRouteInfo<void> {
  const ResetPassword({List<_i21.PageRouteInfo>? children})
      : super(
          ResetPassword.name,
          initialChildren: children,
        );

  static const String name = 'ResetPassword';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i18.Splash]
class SplashRoute extends _i21.PageRouteInfo<void> {
  const SplashRoute({List<_i21.PageRouteInfo>? children})
      : super(
          SplashRoute.name,
          initialChildren: children,
        );

  static const String name = 'SplashRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i19.Terms]
class TermsRoute extends _i21.PageRouteInfo<void> {
  const TermsRoute({List<_i21.PageRouteInfo>? children})
      : super(
          TermsRoute.name,
          initialChildren: children,
        );

  static const String name = 'TermsRoute';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}

/// generated route for
/// [_i20.VerifyOTP]
class VerifyOTP extends _i21.PageRouteInfo<void> {
  const VerifyOTP({List<_i21.PageRouteInfo>? children})
      : super(
          VerifyOTP.name,
          initialChildren: children,
        );

  static const String name = 'VerifyOTP';

  static const _i21.PageInfo<void> page = _i21.PageInfo<void>(name);
}
