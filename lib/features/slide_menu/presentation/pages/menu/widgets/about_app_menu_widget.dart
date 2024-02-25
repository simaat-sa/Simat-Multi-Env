part of 'menu_widgets_imports.dart';

class AboutAppMenuWidget extends StatelessWidget {
  const AboutAppMenuWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
      color: context.colors.white,
      child: Column(
        children: [
          GestureDetector(
            onTap: () => AutoRouter.of(context).push(const Terms()),
            child: AuthDrawerItemWidget(
              text: Translate.s.Privacy_Policy,
            ),
          ),
          GestureDetector(
            onTap: () {},
            child: AuthDrawerItemWidget(
              text: Translate.s.About_Simat_application,
            ),
          ),
          AuthDrawerItemWidget(
            padding: const EdgeInsets.only(bottom: 0),
            text: Translate.s.About_New_version,
            subtext: 'v.01.04.23',
          ),
        ],
      ),
    );
  }
}
