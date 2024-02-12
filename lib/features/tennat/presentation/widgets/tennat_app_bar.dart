import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/res.dart';

class TenantAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double? size;

  const TenantAppBar({
    super.key,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    var userData = context.watch<UserCubit>().state.model;
    return AppBar(
      centerTitle: false,
      leadingWidth: 70,
      titleSpacing: 8,
      backgroundColor: Colors.transparent,
      title: Text(
        userData!.userFullname,
        style: AppTextStyle.s16_w400(color: context.colors.black),
      ),
      actions: [
        SvgPicture.asset(Res.filterLogo),
        Gaps.hGap15,
        Padding(
          padding: const EdgeInsetsDirectional.only(end: 16),
          child: Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Padding(
                padding: const EdgeInsetsDirectional.only(end: 5),
                child: SvgPicture.asset(
                  Res.noticesLogo,
                ),
              ),
              Container(
                margin: const EdgeInsetsDirectional.only(top: 2),
                padding: const EdgeInsets.symmetric(horizontal: 4, vertical: 1.5),
                decoration: BoxDecoration(
                  color: context.colors.appBarColor,
                  borderRadius: BorderRadius.circular(6),
                ),
                child: Text(
                  '2',
                  style: AppTextStyle.s9_w400(color: context.colors.white),
                ),
              ),
            ],
          ),
        ),

      ],
      leading: Padding(
        padding: const EdgeInsetsDirectional.only(start: 20, top: 3, bottom: 3),
        child: CachedImage(
          url: userData.userAvatar,
          height: 50,
          width: 50,
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(size ?? 65);
}
