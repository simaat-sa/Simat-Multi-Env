import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/res.dart';

class CostItemWidget extends StatelessWidget {
  final Color? color;
  final String title;
  final String value;
  final String? image;
  final bool costOrNot;

  const CostItemWidget({
    super.key,
    this.color,
    required this.title,
    required this.value,
    this.image, this.costOrNot=true,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 7),
      color: color ?? context.colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(
            image??Res.coinLogo,
            color: context.colors.textColor,
          ),
          Gaps.hGap5,
          Text(
            title,
            style: AppTextStyle.s14_w400(color: context.colors.darkTextColor),
          ),
          const Spacer(),
          Text(
            '${value} ',
            style: AppTextStyle.s12_w400(color: context.colors.primary),
          ),
          if(costOrNot)
          Text(
            '${Translate.of(context).sar}',
            style: AppTextStyle.s12_w400(color: context.colors.primary),
          ),
        ],
      ),
    );
  }
}
