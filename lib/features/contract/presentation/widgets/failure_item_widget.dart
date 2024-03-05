import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class FailureItemWidget extends StatelessWidget {
  final Function() onTapRefresh;
  const FailureItemWidget({super.key, required this.onTapRefresh});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        InkWell(
          onTap: onTapRefresh,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(
                Icons.refresh,
                color: context.colors.greyWhite,
              ),
              Gaps.hGap10,
              Text(
                Translate.of(context).retry,
                style: AppTextStyle.s14_w400(color: context.colors.greyWhite),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
