import 'package:flutter/material.dart';
import 'package:flutter_tdd/features/contract/presentation/pages/contract_details/tabs/payment/widgets/payment_widgets_imports.dart';

import 'payment_loading_widget.dart';

class PaymentLoadingListWidget extends StatelessWidget {
  const PaymentLoadingListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 10),
      itemCount: 5,
      itemBuilder: (context, index) => const PaymentLoadingWidget(),
      separatorBuilder: (context, index) => const SizedBox(height: 5),
    );
  }
}
