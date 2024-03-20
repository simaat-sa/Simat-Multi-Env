import 'package:flutter/animation.dart';
import 'package:flutter_tdd/core/constants/enum_extension/enum_factory_extension.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';
import 'package:json_annotation/json_annotation.dart';

@JsonEnum(valueField: 'value')
enum PropDetailsStatus {
  vacant("41920"),
  rented("41930"),
  reserved("41940"),
  ///Todo: check this value with backend
  newStatus("41910"),
  non("0");

  final String value;

  const PropDetailsStatus(this.value);

  factory PropDetailsStatus.fromValue(String val) {
    try {
      return PropDetailsStatus.values.enumFactory(val);
    } catch (_) {}
    return non;
  }

  String getLocalizedName() {
    switch (this) {
      case PropDetailsStatus.rented:
        return Translate.s.rented;
      case PropDetailsStatus.reserved:
        return Translate.s.reserved;
      case PropDetailsStatus.vacant:
        return Translate.s.vacant;
      default:
        return "";
    }
  }

  Color getBgColor() {
    switch (this) {
      case PropDetailsStatus.vacant:
        return AppColors.fixedColors.vacantBgColor;
      case PropDetailsStatus.rented:
        return AppColors.fixedColors.primary;
      case PropDetailsStatus.reserved:
        return AppColors.fixedColors.red;
      default:
        return AppColors.fixedColors.primary;
    }
  }

  Color getTextColor() {
    switch (this) {
      case PropDetailsStatus.vacant:
        return AppColors.fixedColors.black;
      case PropDetailsStatus.rented:
        return AppColors.fixedColors.white;
      case PropDetailsStatus.reserved:
        return AppColors.fixedColors.white;
      default:
        return AppColors.fixedColors.primary;
    }
  }
}
