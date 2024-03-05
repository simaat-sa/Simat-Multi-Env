import 'dart:ui';

import 'package:flutter_tdd/core/constants/enum_extension/enum_factory_extension.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

@JsonEnum(valueField: 'value')
enum TenantVisibility {
  active("active"),
  inactive("inactive"),
  closed("closed"),
  expired("expired"),
  non("");

  final String value;

  const TenantVisibility(this.value);

  factory TenantVisibility.fromValue(String val) {
    try {
      return TenantVisibility.values.enumFactory(val);
    } catch (_) {}
    return non;
  }

  String getLocalizedName() {
    switch (this) {
      case TenantVisibility.active:
        return Translate.s.active;
      case TenantVisibility.inactive:
        return Translate.s.inactive;
      case TenantVisibility.closed:
        return Translate.s.closed;
      case TenantVisibility.expired:
        return Translate.s.expired;
      default:
        return "";
    }
  }

  Color getColor() {
    switch (this) {
      case TenantVisibility.active:
        return AppColors.fixedColors.green3;
      case TenantVisibility.inactive:
        return AppColors.fixedColors.secondary;
      case TenantVisibility.closed:
        return AppColors.fixedColors.red;
      case TenantVisibility.expired:
        return AppColors.fixedColors.red;
      default:
        return AppColors.fixedColors.primary;
    }
  }
}
