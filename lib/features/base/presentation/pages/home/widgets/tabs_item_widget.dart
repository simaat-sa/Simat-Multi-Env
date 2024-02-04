part of 'home_widgets_imports.dart';

class TabsItemWidget extends StatelessWidget {
  final UserAccessModel model;
  final bool isActive;

  const TabsItemWidget({
    super.key,
    required this.model,
    required this.isActive,
  });

  @override
  Widget build(BuildContext context) {
    return SvgPicture.network(
      color: isActive ? context.colors.black : context.colors.primary,
      model.iconSvg,
      height: 22,
    );
  }
}
