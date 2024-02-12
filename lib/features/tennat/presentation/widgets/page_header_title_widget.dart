
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class PageHeaderTitleWidget extends StatelessWidget {
  final String title;
  const PageHeaderTitleWidget({super.key,required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppTextStyle.s14_w400(color: context.colors.blackOpacity),
        ),
      ],
    );
  }
}
