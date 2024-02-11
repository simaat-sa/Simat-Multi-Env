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
    return Container(
      padding: const EdgeInsets.all(15),
      child: SvgPicture.network(
        color: isActive ? context.colors.primary : context.colors.black,
        model.iconSvg,
      ),
    );
  }
}
