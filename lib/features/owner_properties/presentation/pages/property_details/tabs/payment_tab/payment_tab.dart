part of 'payment_tab_imports.dart';

class PaymentTab extends StatefulWidget {
  const PaymentTab({super.key});

  @override
  State<PaymentTab> createState() => _PaymentTabState();
}

class _PaymentTabState extends State<PaymentTab> {
  final PaymentTabController controller = PaymentTabController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Column(
      children: [
        PaymentTabHeaderWidget(
          controller: controller,
        ),
        Gaps.vGap14,
        Flexible(
          child: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return const PaymentTabItemWidget();
            },
          ),
        ),
      ],
    ));
  }
}
