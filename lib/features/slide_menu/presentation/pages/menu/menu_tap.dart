part of 'menu_tap_imports.dart';

class MenuTap extends StatefulWidget {
  const MenuTap({super.key});

  @override
  State<MenuTap> createState() => _MenuTapState();
}

class _MenuTapState extends State<MenuTap> {
  final MenuControllerTap controller = MenuControllerTap();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: const CustomAppBar(),
      body: Column(
        children: [
          Gaps.vGap20,
          MenuSettingWidget(controller: controller),
          Gaps.vGap10,
          NotifySwipeWidget(controller: controller),
          Gaps.vGap10,
          AboutAppMenuWidget(controller: controller),
          Gaps.vGap10,
          LogOutWidget(controller: controller,),
        ],
      ),
    );
  }
}
