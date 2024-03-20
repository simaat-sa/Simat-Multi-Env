part of 'property_details_widgets_imports.dart';

class PropertyTabBarWidget extends StatelessWidget {
  final PropertyDetailsController controller;
  const PropertyTabBarWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer<PropDetailsTabsCount>(
      builder: (context, value) {
        return Container(
          color: context.colors.white,
          child: TabBar(
              dividerColor: context.colors.greyWhite,
              unselectedLabelColor: context.colors.primaryGrey,
              unselectedLabelStyle: AppTextStyle.s16_w500(color: context.colors.primaryGrey),
              indicatorSize: TabBarIndicatorSize.label,
              labelPadding: const EdgeInsets.symmetric(vertical: 13),
              labelStyle: AppTextStyle.s16_w500(color: context.colors.primary),
              tabs: [
                Text(Translate.of(context).summary),
                Text(Translate.of(context).unit_number(value.unitCount)),
                Text(Translate.of(context).main_number(value.maintenanceCount)),
                Text(Translate.of(context).expenses_number(value.paymentCount)),
              ]),
        );
      },
      observable: controller.tabsCountObs,
    );
  }
}
