import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/search_form_field/search_form_field.dart';
import 'package:flutter_tdd/res.dart';

class FilterItemWidget extends StatelessWidget {
  final void Function()? onTap;
  final Function(String)? onSubmit;
  final Function(String)? onChange;
  final bool showFilterIcon;
  final ObsValue<bool> filterApply;

  const FilterItemWidget({
    super.key,
    this.onTap,
    this.onSubmit,
    this.onChange,
    this.showFilterIcon = true,
    required this.filterApply,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          Expanded(
            child: SearchFormField(
              onChange: onChange,
              onSubmit: onSubmit,
              fillColor: context.colors.white,
            ),
          ),
          if(showFilterIcon)
          Row(
            children: [
                Gaps.hGap10,
                Stack(
                  children: [
                    InkWell(
                      onTap: onTap,
                      child: SvgPicture.asset(
                        Res.filterLogo,
                        height: 26,
                        width: 26,
                        color: context.colors.textColor,
                      ),
                    ),
                    ObsValueConsumer<bool>(
                      observable: filterApply,
                      builder: (context, value) {
                        return Visibility(
                          visible: value,
                          child: PositionedDirectional(
                            end: 1,
                            child: Container(
                              height: 10,
                              width: 8,
                              padding: const EdgeInsets.all(5),
                              decoration: BoxDecoration(
                                color: context.colors.secondary,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  ],
                ),
              ],
          ),
        ],
      ),
    );
  }
}
