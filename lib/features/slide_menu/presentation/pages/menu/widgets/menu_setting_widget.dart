part of 'menu_widgets_imports.dart';

class MenuSettingWidget extends StatelessWidget {
  final MenuControllerTap controller;
  final void Function()? onChangeLanguage;

  const MenuSettingWidget({
    super.key,
    required this.controller,
    this.onChangeLanguage,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      color: context.colors.white,
      child: Column(
        children: [
          ObsValueConsumer(
              observable: controller.langObs,
              builder: (context, state) {
                return GestureDetector(
                  onTap: () => controller.langObs.setValue(!controller.langObs.getValue()),
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
              }),
          GestureDetector(
            onTap: () {},
            child: AuthDrawerItemWidget(
              text: Translate.s.Share_the_app,
            ),
          ),
          AuthDrawerItemWidget(
            padding: const EdgeInsets.only(bottom: 0),
            text: Translate.s.Technical_support_ticket,
          ),
        ],
      ),
    );
  }
}
