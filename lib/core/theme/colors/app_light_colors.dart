
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/helpers/color_helper.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';

class AppLightColors extends AppColors {


  @override
  Color get primary => ColorHelper.hexToColor(const String.fromEnvironment("PRIMARY_COLOR"));

  @override
  Color get secondary => ColorHelper.hexToColor(const String.fromEnvironment("SECONDARY_COLOR"));
  @override
  Color get textColor => ColorHelper.hexToColor(const String.fromEnvironment("TEXT_COLOR"));

 @override
  Color get filedColor => const Color(0xffD7EBEB);

@override
  Color get inputBorder => const Color(0xffE8E8E8);

  @override
  Color get white => Colors.white;

  @override
  Color get background => const  Color(0xffF5F6F8);

 @override
  Color get backgroundWhite => const  Color(0xffFFFFFC);

  @override
  Color get appBarColor => const Color(0xFFF9656B);

  @override
  Color get black => Colors.black;

  @override
  Color get blackOpacity => Colors.black45;

  @override
  Color get greyWhite => Colors.grey.withOpacity(.2);

  @override
  Color get disableGray => const Color(0xFFCBCBCB);

  @override
  Color get green => Colors.green;

  @override
  Color get brown => const Color(0xff786760);
}