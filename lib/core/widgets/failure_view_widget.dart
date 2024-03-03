import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class FailureViewWidget extends StatelessWidget {
  final void Function() onTap;
  const FailureViewWidget({super.key, required this.onTap,});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(top: 150, start: 70, end: 70),
      child: InkWell(
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              Translate.s.retry,
              style: AppTextStyle.s16_w400(color: context.colors.blackOpacity),
            ),
            Gaps.hGap5,
            Icon(Icons.refresh, color: context.colors.blackOpacity),
          ],
        ),
      ),
    );
  }
}
