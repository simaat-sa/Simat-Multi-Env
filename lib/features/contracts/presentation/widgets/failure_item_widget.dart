import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class FailureItemWidget extends StatelessWidget {
  const FailureItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.refresh,color: context.colors.greyWhite,),
            Gaps.hGap10,
            Text('RETRY',style: AppTextStyle.s14_w400(color: context.colors.greyWhite),),
          ],
        ),
      ],
    );
  }
}
