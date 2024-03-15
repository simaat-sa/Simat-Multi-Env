part of 'payment_tab_widgets_imports.dart';

class PaymentTabItemWidget extends StatelessWidget {
  const PaymentTabItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
          child: ListView(
            children: [
              const PaymentTabHeaderWidget(),
              Gaps.vGap14,
              const PaymentTabDetailsListWidget(),
              Gaps.vGap10,
            ],
          ),
        ),
        const PaymentTabCostWidget(),
        const PaymentTabButtonWidget(),
      ],
    );
  }
}
