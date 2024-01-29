import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';

class AuthAppBarWidget extends StatelessWidget implements PreferredSizeWidget {
  final GlobalKey<ScaffoldState>? scaffoldkey;
  final String? title;
  final Function()? onBack;
  final bool showBack;
  const AuthAppBarWidget(
      {super.key,
        this.title,
        this.onBack,
        this.showBack = true,
        this.scaffoldkey});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsetsDirectional.only(start: 10,end: 20),
      child: AppBar(
        elevation: 0,
        centerTitle: true,
        title: title != null
            ? Text(
          title ?? "",
          style: AppTextStyle.s20_w600(color: context.colors.black),
        )
            : null,
        backgroundColor: Colors.transparent,
        leading: Offstage(
          offstage: !showBack,
          child: InkWell(
            onTap: onBack ?? AutoRouter.of(context).pop,
            child: Icon(
              Icons.arrow_back_ios_new,
              size: 22,
              color: context.colors.black,
            ),
          ),
        ),
        actions: [
          InkWell(
              onTap: () =>
                  scaffoldkey?.currentState?.openEndDrawer(),
              child: Icon(
                Icons.more_vert_outlined,
                color: context.colors.black,
                size: 25,
              ))
        ],
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(50);
}
