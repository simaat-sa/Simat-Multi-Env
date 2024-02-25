import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/app_bottom_sheets.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/auth_drawer_item_widget.dart';
import 'package:flutter_tdd/features/general/presentation/pages/terms/terms_imports.dart';

class AuthDrawerWidget extends StatelessWidget {
  final Function()? onChangeLanguage;
  final ObsValue<bool>? showDropDawnCubit;

  const AuthDrawerWidget({super.key, this.onChangeLanguage, this.showDropDawnCubit});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      top: true,
      child: Drawer(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        width: 260.r,
        backgroundColor: context.colors.white,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsetsDirectional.only(top: 30.r, end: 20.r, start: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
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
                padding: EdgeInsetsDirectional.symmetric(horizontal: 20.r, vertical: 25.r),
                children: [
                  ObsValueConsumer(
                    observable: showDropDawnCubit!,
                    builder: (context, state) {
                      return GestureDetector(
                        onTap: onChangeLanguage,
                        child: Column(
                          children: [
                            AuthDrawerItemWidget(
                              padding: EdgeInsetsDirectional.only(bottom: state ? 20 : 30),
                              icon: state ? Icons.keyboard_arrow_down : Icons.arrow_forward_ios_outlined,
                              size: state ? 25 : 15,
                              text: Translate.s.label_app_language,
                            ),
                            Visibility(
                              visible: state,
                              child: Column(
                                children: [
                                  Container(
                                    alignment: AlignmentDirectional.centerStart,
                                    padding: const EdgeInsetsDirectional.only(start: 20, end: 20, bottom: 10),
                                    child: Column(
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          Translate.s.English,
                                          style: AppTextStyle.s14_w400(color: context.colors.primaryText),
                                        ),
                                        Gaps.vGap20,
                                        Text(
                                          Translate.s.Arabic,
                                          style: AppTextStyle.s14_w400(color: context.colors.primaryText),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Divider(
                                    color: context.colors.greyWhite,
                                    thickness: 1.5,
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
                  GestureDetector(
                    onTap: () {},
                    child: AuthDrawerItemWidget(
                      text: Translate.s.Share_the_app,
                    ),
                  ),
                  GestureDetector(
                    onTap: () => getTerms(context),
                    child: AuthDrawerItemWidget(
                      text: Translate.s.Privacy_Policy,
                    ),
                  ),
                  AuthDrawerItemWidget(
                    text: Translate.s.Technical_support_ticket,
                  ),
                  GestureDetector(
                    onTap: () {},
                    child: AuthDrawerItemWidget(
                      text: Translate.s.About_Simat_application,
                    ),
                  ),
                  AuthDrawerItemWidget(
                    text: Translate.s.About_New_version,
                    subtext: 'v.01.04.23',
                  ),
                ],
              ),
            ),
            Text(
              textAlign: TextAlign.center,
              '© 2024 by Simaat',
              style: AppTextStyle.s12_w400(color: context.colors.primary),
            ),
            Gaps.vGap32,
          ],
        ),
      ),
    );
  }
  void getTerms(BuildContext context) {
    AppBottomSheets.showScrollableBody(
      context: context,
      builder: (context) => const Terms(),
    );
  }
}
