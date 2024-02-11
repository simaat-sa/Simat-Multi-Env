import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/CachedImage.dart';

class TennatAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double? size;

  const TennatAppBar({
    super.key,
    this.size,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      centerTitle: false,
      leadingWidth: 70,
      titleSpacing: 8,
      backgroundColor: Colors.transparent,
      title: Text(
        'محمد احمد الزهراني',
        style: AppTextStyle.s16_w400(color: context.colors.black),
      ),
      actions: [
        Padding(
          padding: const EdgeInsetsDirectional.only(end: 16),
          child: Stack(
            alignment: AlignmentDirectional.topEnd,
            children: [
              Icon(
                Icons.notifications_none_outlined,
                color: context.colors.black,
                size: 27,
              ),
              Container(
                margin: const EdgeInsetsDirectional.only(start: 30),
                 padding: const EdgeInsets.all(4),
                decoration: BoxDecoration(color: context.colors.appBarColor, shape: BoxShape.circle),
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
          url: 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcR0-zX8Elzwt9uSG7ZAQ7LSHm-cv1P5vBEMCw&usqp=CAU',
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
