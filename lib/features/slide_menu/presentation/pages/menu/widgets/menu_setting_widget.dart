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
          const LanguagesWidget(),
          AuthDrawerItemWidget(
            text: Translate.of(context).Share_the_app,
            onTap: () {},
          ),
          AuthDrawerItemWidget(
            padding: const EdgeInsets.only(bottom: 0),
            text: Translate.of(context).Technical_support_ticket,
            onTap: () => getIt<ShareServices>().launchURL(url: ApiNames.supportLink),
          ),
        ],
      ),
    );
  }
}
