import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/app_button.dart';
import 'package:flutter_tdd/features/base/presentation/pages/home/home_imports.dart';

class BiometricActions extends StatelessWidget {
  final HomeController controller;
  const BiometricActions({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Row(
        children: [
          Expanded(
            child: AppTextButton.maxCustom(
              maxHeight: 45,
              onPressed: () {
                controller.saveUserCredentialsUsingBiometric(context);
              },
              text: Translate.s.confirm,
            ),
          ),
          Gaps.hGap16,
          Expanded(
            child: AppTextButton.maxCustom(
              maxHeight: 45,
              bgColor: context.colors.secondary,
              onPressed: () {
                Navigator.pop(context);
              },
              text: Translate.s.cancel,
            ),
          ),
        ],
      ),
    );
  }
}
