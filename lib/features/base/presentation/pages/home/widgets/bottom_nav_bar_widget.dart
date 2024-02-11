part of 'home_widgets_imports.dart';

class BottomNavBarWidget extends StatelessWidget {
  final HomeController controller;

  const BottomNavBarWidget({
    super.key,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    var listAccessUser = context.watch<UserCubit>().state.model!.userAccess.take(5).toList();
    return ObsValueConsumer(
      observable: controller.navigationBarObs,
      builder: (context, value) {
        return AnimatedBottomNavigationBar.builder(
          itemCount: listAccessUser.length,
          onTap: (value) => controller.changeSelectPage(value),
          tabBuilder: (index, isActive) {
            return TabsItemWidget(
              model: listAccessUser[index],
              isActive: isActive,
            );
          },
          activeIndex: value,
          backgroundColor: Colors.white,
          splashColor: context.colors.primary,
          gapLocation: GapLocation.none,
          splashSpeedInMilliseconds: 200,
          leftCornerRadius: 18,
          rightCornerRadius: 18,
        );
      },
    );
  }
}
