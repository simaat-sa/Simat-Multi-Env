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
            "نوع المصروف",
            style: AppTextStyle.s18_w500(color: context.colors.darkTextColor),
          ),
          Gaps.vGap14,
          const PaymentFilterItemWidget(text: "صيانة عامة"),
          const PaymentFilterItemWidget(text: "كهرباء الخدمات"),
          const PaymentFilterItemWidget(text: "كهرباء الشقق الخالية"),
          const PaymentFilterItemWidget(text: "استهلاك ماء"),
          const PaymentFilterItemWidget(text: "صيانة مصاعد"),
          const PaymentFilterItemWidget(text: "صيانة معدات سلامة"),
          const PaymentFilterItemWidget(text: "حراسات"),
          const PaymentFilterItemWidget(text: "نقل مخلفات"),
          const PaymentFilterItemWidget(text: "اصلاحات عامة"),
          const PaymentFilterItemWidget(text: "مصروفات مكتبية"),
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
