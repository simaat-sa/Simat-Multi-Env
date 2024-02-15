import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/res.dart';

class SheetAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  const SheetAppBar({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: context.colors.background,
      elevation: 0,
      automaticallyImplyLeading: false,
      centerTitle: false,
      actions: [
        InkWell(
          onTap: () => AutoRouter.of(context).pop(),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SvgPicture.asset(
              Res.closeIcon,
            ),
          ),
        )
      ],
      title: Text(
        title,
        style: AppTextStyle.s24_w500(color: context.colors.darkTextColor),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(65);
}
