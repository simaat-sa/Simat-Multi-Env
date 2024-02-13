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
  Color get inputBorder => const Color(0xffE8E8E8);

  @override
  Color get black => Colors.white;

  @override
  Color get background => const Color(0xffF2F6F8);

 @override
  Color get backgroundWhite => Colors.black;

  @override
  Color get blackOpacity => const Color(0xff868788);

  @override
  Color get greyWhite => Colors.grey.withOpacity(.2);

  @override
  Color get disableGray=> Colors.black38;

  @override
  Color get green=>  Colors.green;

  @override
  Color get green2 => const Color(0xff239397);

  @override
  Color get green3 => const Color(0xff83AA54);

  @override
  Color get brown => const Color(0xff635048);

  @override
  Color get primaryText => const Color(0xff2c979b);

  @override
  Color get darkTextColor => const Color(0xff3F3F3F);

  @override
  Color get red => const Color(0xffFF6969);

  @override
  Color get backgroundLight => const Color(0xffe0e6ec);

  @override
  Color get bgLight => const Color(0xffF5F6F8);
}