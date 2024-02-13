import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/validator.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/GenericTextField.dart';
import 'package:flutter_tdd/core/widgets/search_form_field/search_form_field.dart';
import 'package:flutter_tdd/res.dart';

class FilterItemWidget extends StatelessWidget {
  final void Function() onTap;
  const FilterItemWidget({super.key, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 15),
      child: Row(
        children: [
          const Expanded(
            child: SearchFormField(
              searchHint: 'بحث',
            ),
          ),
          Gaps.hGap10,
          InkWell(
            onTap: onTap,
            child: SvgPicture.asset(
              Res.filterLogo,
              height: 30,
              width: 28,
            ),
          ),
        ],
      ),
    );
  }
}
