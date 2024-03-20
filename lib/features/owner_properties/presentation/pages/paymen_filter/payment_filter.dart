part of 'payment_filter_imports.dart';

@RoutePage(name: "PaymentFilterRoute")
class PaymentFilter extends StatelessWidget {
  const PaymentFilter({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22).r,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          const PaymentFilterAppBar(),
          Text(
            Translate.s.type_of_expense,
            style: AppTextStyle.s18_w500(color: context.colors.darkTextColor),
          ),
          Gaps.vGap14,
          PaymentFilterItemWidget(text: Translate.s.general_maint),
          PaymentFilterItemWidget(text: Translate.s.electricity_services),
          PaymentFilterItemWidget(text: Translate.s.electricity_for_vacant_apartments),
          PaymentFilterItemWidget(text: Translate.s.water_consumption),
          PaymentFilterItemWidget(text: Translate.s.elevator_maintenance),
          PaymentFilterItemWidget(text: Translate.s.safety_equipment_maintenance),
          PaymentFilterItemWidget(text: Translate.s.guards),
          PaymentFilterItemWidget(text: Translate.s.waste_transportation),
          PaymentFilterItemWidget(text: Translate.s.general_repairs),
          PaymentFilterItemWidget(text: Translate.s.office_expenses),
          Gaps.hGap16,
          Divider(
            color: context.colors.primary,
          ),
          const Spacer(),
          FilterButtonsWidget(
            onFilterTap: () {},
            onResetTap: () {},
          ),
        ]),
      ),
    );
  }
}
