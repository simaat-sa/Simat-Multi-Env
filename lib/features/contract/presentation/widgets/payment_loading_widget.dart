import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';

class PaymentLoadingWidget extends StatelessWidget {
  const PaymentLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          BaseShimmerWidget(
            child: Container(
              margin: const EdgeInsets.symmetric(vertical: 5),
              width: MediaQuery.of(context).size.width,
              height: 120,
              decoration: BoxDecoration(
                color: context.colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
