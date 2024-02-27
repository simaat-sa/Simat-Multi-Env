part of 'home_widgets_imports.dart';

class BottomNavBarWidget extends StatelessWidget {
  final HomeController controller;
  final List<UserAccessModel> pages;

  const BottomNavBarWidget({
    super.key,
    required this.controller,
    required this.pages,
  });

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
      observable: controller.navigationBarObs,
      builder: (context, value) {
        return AnimatedBottomNavigationBar.builder(
          itemCount: pages.length,
          onTap: (value) => controller.changeSelectPage(value),
          tabBuilder: (index, isActive) {
            return TabsItemWidget(
              model: pages[index],
              isActive: isActive,
            );
          },
          height: 70,
          activeIndex: value,
          backgroundColor: Colors.white,
          splashColor: context.colors.primary,
          gapLocation: GapLocation.none,
          splashSpeedInMilliseconds: 200,
        );
      },
    );
  }
}
