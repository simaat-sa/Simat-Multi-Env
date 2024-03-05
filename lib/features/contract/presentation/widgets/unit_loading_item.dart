import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/core/widgets/shimmers/text_shimmer.dart';

class UnitLoadingItem extends StatelessWidget {
  const UnitLoadingItem({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: MediaQuery.of(context).size.width,
        child: Column(
          children: [
            BaseShimmerWidget(
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 100,
                decoration: BoxDecoration(
                  color: context.colors.white,
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            Gaps.vGap10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  children: [
                    const TextShimmer(lineWidthPercent: .8),
                    Gaps.vGap5,
                    const TextShimmer(lineWidthPercent: .8),
                  ],
                ),
                Column(
                  children: [
                    const TextShimmer(lineWidthPercent: .5),
                    Gaps.vGap5,
                    const TextShimmer(lineWidthPercent: .5),
                  ],
                ),
              ],
            ),
          ],
        ));
  }
}
