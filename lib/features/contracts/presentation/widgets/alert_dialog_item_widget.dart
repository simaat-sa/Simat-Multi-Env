import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/res.dart';

class AlertDialogItemWidget extends StatelessWidget {
  final String title;
  final Color? color;
  final String value;
  final String image;
  final TextStyle? valueStyle;

  const AlertDialogItemWidget({super.key, required this.title, this.color, required this.value, required this.image, this.valueStyle});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 7),
      color: color??context.colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(image),
          Gaps.hGap5,
          Text(
            title,
            style: AppTextStyle.s14_w400(color: context.colors.darkTextColor),
          ),
          const Spacer(),
          Text(
            value,
            style:valueStyle?? AppTextStyle.s14_w400(color: context.colors.primary),
          ),
        ],
      ),
    );
  }
}
