import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/res.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double? size;

  const CustomAppBar({
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
        Gaps.hGap8,
        Padding(
          padding: const EdgeInsetsDirectional.only(end: 16),
          child: Stack(
            alignment: AlignmentDirectional.center,
            children: [
              Padding(
                padding: const EdgeInsets.all(6.0),
                child: SvgPicture.asset(
                  Res.noticesLogo,
                ),
              ),
              PositionedDirectional(
                top: 0,
                end: 0,
                child: Container(
                  padding: const EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: context.colors.red,
                    shape: BoxShape.circle,
                  ),
                  child: Text(
                    '2',
                    style: AppTextStyle.s9_w400(color: context.colors.white),
                  ),
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
