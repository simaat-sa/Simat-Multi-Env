import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class FailureViewWidget extends StatelessWidget {
  final void Function() onTap;
  const FailureViewWidget({super.key, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 150),
      child: InkWell(
        onTap: onTap,
        child: Row(
          children: [
            Text(
              'Try again',
              style: AppTextStyle.s14_w400(color: context.colors.greyWhite),
            ),
          ],
        ),
      ),
    );
  }
}
