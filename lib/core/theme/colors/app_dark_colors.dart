import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/color_helper.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';

class AppDarkColors extends AppColors {

  @override
  Color get primary => ColorHelper.hexToColor(const String.fromEnvironment("PRIMARY_COLOR"));

  @override
  Color get secondary => ColorHelper.hexToColor(const String.fromEnvironment("SECONDARY_COLOR"));

  @override
  Color get textColor => ColorHelper.hexToColor(const String.fromEnvironment("TEXT_COLOR"));

  @override
  Color get filedColor => const Color(0xffD7EBEB);

  @override
  Color get white => Colors.black;

  @override
  Color get appBarColor => const Color(0xFFF9656B);

  @override
  Color get inputBorder => const Color(0xffE8E8E8);

  @override
  Color get black => Colors.white;

  @override
  Color get background => Colors.black;

 @override
  Color get backgroundWhite => Colors.black;

  @override
  Color get blackOpacity => Colors.white70;

  @override
  Color get greyWhite => Colors.grey.withOpacity(.2);

  @override
  Color get disableGray=> Colors.black38;

  @override
  Color get green=>  Colors.green;

  @override
  Color get brown => const Color(0xff786760);
}