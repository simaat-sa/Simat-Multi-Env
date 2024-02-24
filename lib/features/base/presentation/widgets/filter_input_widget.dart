import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/search_form_field/search_form_field.dart';
import 'package:flutter_tdd/res.dart';

class FilterItemWidget extends StatelessWidget {
  final void Function() onTap;
  final Function(String)? onSubmit;
  final Function(String)? onChange;

  const FilterItemWidget({super.key, required this.onTap, this.onSubmit, this.onChange});

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
          Gaps.hGap10,
          InkWell(
            onTap: onTap,
            child: SvgPicture.asset(
              Res.filterLogo,
              height: 26,
              width: 26,
            ),
          ),
        ],
      ),
    );
  }
}
