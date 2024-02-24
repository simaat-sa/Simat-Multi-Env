import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class EmptyListItemWidget extends StatelessWidget {
  const EmptyListItemWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Gaps.vGap128,
        Center(
            child: Text(
          '!No Item Found',
          style: AppTextStyle.s16_w400(color: context.colors.darkTextColor),
        )),
      ],
    );
  }
}
