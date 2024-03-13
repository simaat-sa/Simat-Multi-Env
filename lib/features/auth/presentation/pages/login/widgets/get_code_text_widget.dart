
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/app_bottom_sheets.dart';
import 'package:flutter_tdd/features/auth/presentation/pages/get_code_info/get_code_info_imports.dart';

class GetCodeTextWidget extends StatelessWidget {
  const GetCodeTextWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => getCode(context),
      child: Text(
        Translate.of(context).how_get_code,
        style: AppTextStyle.s14_w400(color: context.colors.secondary),
      ),
    );
  }

  void getCode(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (context) => const GetCodeInfo(),
    );
  }
}
