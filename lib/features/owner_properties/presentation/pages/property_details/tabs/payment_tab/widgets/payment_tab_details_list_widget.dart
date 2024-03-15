part of'payment_tab_widgets_imports.dart';


class PaymentTabDetailsListWidget extends StatelessWidget {
  const PaymentTabDetailsListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(10, (index) {
        return const PaymentTabDetailsWidget();
      }),
    );
  }
}
