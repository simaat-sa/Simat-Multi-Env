import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/widgets/option_item_widget.dart';
import 'package:flutter_tdd/res.dart';
class SelectableOptionItemWidget extends StatelessWidget {
  final GestureTapCallback? onTap;
  final bool isSelected;
  final OptionItemWidget optionItemWidget;
  final TextStyle? selectedTextStyle;

  const SelectableOptionItemWidget({
    super.key,
    this.onTap,
    required this.isSelected,
    required this.optionItemWidget,
    this.selectedTextStyle,
  });


  TextStyle  _selectedTextStyle(BuildContext context ) => selectedTextStyle??AppTextStyle
      .s16_w400(color: context.colors.darkTextColor);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8),
      child: InkWell(
        onTap: onTap,
        child: Container(
          padding: const EdgeInsets.only(top: 4, bottom: 14),
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: context.colors.greyWhite,
                width: 1,
              ),
            ),
          ),
          child: Row(
            children: [
              Gaps.hGap8,
              _getPrefix(),
              Gaps.hGap8,
              OptionItemWidget(
                constraints: const BoxConstraints(maxWidth: 290),
                title: optionItemWidget.title,
                prefix: optionItemWidget.prefix,
                titleTextStyle: isSelected ? _selectedTextStyle(context) : null,
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget _getPrefix() {
    if(isSelected){
      return SvgPicture.asset(
        Res.checkmark,
      );
    }
   return SvgPicture.asset(
    Res.checkmarkEmpty,
    );
  }
}
