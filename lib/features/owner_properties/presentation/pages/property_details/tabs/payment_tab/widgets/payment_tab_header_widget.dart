part of'payment_tab_widgets_imports.dart';


class PaymentTabHeaderWidget extends StatelessWidget {
  final PaymentTabController controller;
  final String paymentCount;

  const PaymentTabHeaderWidget({
    super.key,
    required this.controller,
    required this.paymentCount,
  });

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer(
        observable: controller.expensesCount,
        builder: (context, value) {
          return Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(Translate.s.expenses_number(_paymentCount(value)),
                      style: AppTextStyle.s16_w400(color: context.colors.darkTextColor)),
                ],
              ),
              Row(
                children: [
                  if (false)
                    ObsValueConsumer(
                        observable: controller.applyFilterObs,
                        builder: (context, value) {
                          return Visibility(
                            visible: value,
                            child: GestureDetector(
                              onTap: () {},
                              child: Text(
                                'الغاء التصفية',
                                style: AppTextStyle.s14_w400(color: context.colors.secondary),
                              ),
                            ),
                          );
                        }),
                  Gaps.hGap10,
                  FilterIconWidget(
                    filterApply: controller.applyFilterObs,
                    onTap: () => AutoRouter.of(context).push(const PaymentFilterRoute()),
                  )
                ],
              ),
            ],
          );
        }
    );
  }

  Object _paymentCount(int value) => controller.applyFilterObs.getValue()==true?"$value/$paymentCount":value;
}
