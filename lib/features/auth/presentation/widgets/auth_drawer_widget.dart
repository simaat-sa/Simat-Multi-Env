import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/services/current_version_helper.dart';
import 'package:flutter_tdd/core/helpers/share_services.dart';
import 'package:flutter_tdd/core/http/generic_http/api_names.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/app_bottom_sheets.dart';
import 'package:flutter_tdd/core/widgets/languages_widget/languages_widget.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/auth_drawer_item_widget.dart';
import 'package:flutter_tdd/features/general/presentation/pages/terms/terms_imports.dart';

class AuthDrawerWidget extends StatelessWidget {
  const AuthDrawerWidget({super.key});

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
                      size: 35,
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
                  const LanguagesWidget(),
                  AuthDrawerItemWidget(
                    text: Translate.of(context).Share_the_app,
                    onTap: () => getIt<ShareServices>().shareApp(),
                  ),
                  AuthDrawerItemWidget(
                    text: Translate.of(context).Privacy_Policy,
                    onTap: () => getTerms(context),
                  ),
                  AuthDrawerItemWidget(
                    text: Translate.of(context).Technical_support_ticket,
                    onTap: () => getIt<ShareServices>().launchURL(url: ApiNames.supportLink),
                  ),
                  // AuthDrawerItemWidget(
                  //   text: Translate.of(context).About_Simat_application,
                  //   onTap: () {},
                  // ),
                  AuthDrawerItemWidget(
                    text: Translate.of(context).About_New_version,
                    subtext: 'v.${CurrentVersionHelper.instance.currentVersion}',
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
