
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/app_button.dart';
import 'package:flutter_tdd/features/base/presentation/pages/home/home_imports.dart';

class ActiveFingerPrintContent extends StatelessWidget {
  final HomeController controller;
  const ActiveFingerPrintContent({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Text(
      Translate.s.Active_login_by_biometric,
      style: AppTextStyle.s14_w400(color: context.colors.black),
    );
  }
}
