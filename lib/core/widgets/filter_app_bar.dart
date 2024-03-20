
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class FilterAppBarWidget extends StatelessWidget {
  const FilterAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, top: kToolbarHeight),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Gaps.hGap22,
          Text(
            Translate.of(context).filter,
            style: AppTextStyle.s24_w500(color: context.colors.darkTextColor),
          ),
          InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Icon(
              Icons.close,
              color: context.colors.darkTextColor,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
