part of 'payment_widgets_imports.dart';

class PaymentListItemsWidget extends StatelessWidget {
  final List<PaymentModel> list;
  final ContractDetailsController controller;

  const PaymentListItemsWidget({super.key, required this.list, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(list.length, (index) {
        final item = list[index];
        return PaymentItemWidget(
          model: item,
          onTap: () => controller.requester.onSelectedItem(item),
        );
      }),
    );
  }
}
