part of 'menu_widgets_imports.dart';

class AboutAppMenuWidget extends StatelessWidget {
  final MenuControllerTap controller;
  const AboutAppMenuWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      color: context.colors.white,
      child: Column(
        children: [
          GestureDetector(
            onTap: () => controller.getTerms(context),
            child: AuthDrawerItemWidget(
              text: Translate.of(context).Privacy_Policy,
            ),
          ),
          // GestureDetector(
          //   onTap: () {},
          //   child: AuthDrawerItemWidget(
          //     text: Translate.of(context).About_Simat_application,
          //   ),
          // ),
          AuthDrawerItemWidget(
            padding: const EdgeInsets.only(bottom: 0),
            text: Translate.of(context).About_New_version,
            subtext: 'v.${CurrentVersionHelper.instance.currentVersion}',
          ),
        ],
      ),
    );
  }
}
