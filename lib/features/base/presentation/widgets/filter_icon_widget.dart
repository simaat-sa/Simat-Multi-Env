import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/res.dart';

class FilterIconWidget extends StatelessWidget {
  final ObsValue<bool> filterApply;
  final void Function()? onTap;
  const FilterIconWidget({super.key, required this.filterApply, this.onTap});

  @override
  Widget build(BuildContext context) {
    return Stack(
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
    );
  }
}
