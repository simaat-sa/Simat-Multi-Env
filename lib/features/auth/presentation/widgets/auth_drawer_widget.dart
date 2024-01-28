import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/auth_drawer_item_widget.dart';

class AuthDrawerWidget extends StatelessWidget {
  final Function()? onChangeLanguage;
  final ObsValue<bool>? showDropDawnCubit;

  const AuthDrawerWidget(
      {super.key, this.onChangeLanguage, this.showDropDawnCubit});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Drawer(
        width: 260.r,
        backgroundColor: context.colors.white,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(top: 30.r, end: 20.r),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () => Navigator.of(context).pop(),
                    child: Icon(
                      Icons.close,
                      color: context.colors.black,
                      size: 24,
                    ),
                  ),
                ],
              ),
            ),
            Flexible(
              child: ListView(
                physics: const BouncingScrollPhysics(),
                padding: EdgeInsetsDirectional.symmetric(
                    horizontal: 20.r, vertical: 25.r),
                children: [
                  ObsValueConsumer(
                    observable: showDropDawnCubit!,
                    builder: (context, state) {
                      return GestureDetector(
                        onTap: onChangeLanguage,
                        child: Column(
                          children: [
                            AuthDrawerItemWidget(
                              padding: EdgeInsetsDirectional.only(
                                  bottom: state ? 20 : 30),
                              icon: state
                                  ? Icons.keyboard_arrow_down
                                  : Icons.arrow_forward_ios_outlined,
                              size: state ? 25 : 15,
                              text: 'Language',
                            ),
                            Visibility(
                              visible: state,
                              child: Column(
                                children: [
                                  Container(
                                    alignment: Alignment.centerLeft,
                                    padding: const EdgeInsetsDirectional.only(
                                        start: 20, end: 20, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'English',
                                          style: AppTextStyle.s14_w400(
                                              color: context.colors.secondary),
                                        ),
                                        Gaps.vGap20,
                                        Text(
                                          'العربية',
                                          style: AppTextStyle.s14_w400(
                                              color: context.colors.secondary),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    color: context.colors.background,
                                    thickness: 2,
                                  ),
                                  Gaps.vGap15,
                                ],
                              ),
                            ),
                          ],
                        ),
                      );
                    },
                  ),
                  InkWell(
                    onTap: () {},
                    child: const AuthDrawerItemWidget(
                      text: 'App Guide',
                    ),
                  ),
                  const AuthDrawerItemWidget(
                    text: 'Send Feedback',
                  ),
                  const AuthDrawerItemWidget(
                    text: 'Share this App',
                  ),
                  InkWell(
                    onTap: () {},
                    child: const AuthDrawerItemWidget(
                      text: 'Terms of Use',
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const AuthDrawerItemWidget(
                      text: 'Privacy Policy',
                    ),
                  ),
                  InkWell(
                    onTap: () {},
                    child: const AuthDrawerItemWidget(
                      text: 'About SimTask',
                    ),
                  ),
                  const AuthDrawerItemWidget(
                    text: 'What’s New',
                    subtext: 'v.01.04.23',
                  ),
                ],
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              '© 2023 by Simaat',
              style: AppTextStyle.s12_w400(color: context.colors.primary),
            ),
            Gaps.vGap32,
          ],
        ),
      ),
    );
  }
}
