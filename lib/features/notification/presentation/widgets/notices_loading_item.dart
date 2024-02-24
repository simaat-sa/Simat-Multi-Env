import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';

class NoticesLoadingItem extends StatelessWidget {
  const NoticesLoadingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return BaseShimmerWidget(
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 80,
        decoration: BoxDecoration(
          color: context.colors.white,
        ),
      ),
    );
  }
}
