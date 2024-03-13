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
    return Padding(
      padding: const EdgeInsets.only(top: 10, bottom: 15),
      child: Column(
        children: [
          SizedBox(
            height: 24,
            child: _getTabIcon(context),
          ),
          Gaps.vGap4,
          Text(
            model.pageid == "0" ? Translate.of(context).menu : model.localizedName,
            style: AppTextStyle.s14_w500(
              color: isActive ? context.colors.primary : context.colors.darkTextColor,
            ),
          ),
        ],
      ),
    );
  }

  StatelessWidget _getTabIcon(BuildContext context) {
    if (model.pageid == "0") {
      return Icon(
        Icons.menu,
        color: isActive ? context.colors.primary : context.colors.darkTextColor,
      );
    } else if (model.iconSvg == "https://dev.simaat.sa/_layout/ws_icons/svg/service.svg") {
      return SvgPicture.asset(
        color: isActive ? context.colors.primary : context.colors.darkTextColor,
        Res.maintenanceIcon,
      );
    }
    return SvgPicture.network(
      color: isActive ? context.colors.primary : context.colors.darkTextColor,
      model.iconSvg,
    );
  }
}
