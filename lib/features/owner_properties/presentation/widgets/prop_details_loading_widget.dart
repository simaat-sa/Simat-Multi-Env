import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/shimmers/base_shimmer_widget.dart';
import 'package:flutter_tdd/core/widgets/shimmers/text_shimmer.dart';

class PropDetailsLoadingWidget extends StatelessWidget {
  const PropDetailsLoadingWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const TextShimmer(lineWidthPercent: .8,),
          Gaps.vGap18,
          const TextShimmer(lineWidthPercent: .8),
          Gaps.vGap18,
          Row(
            children: List.generate(3, (index) {
              return BaseShimmerWidget(
                child: Container(
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                  height: 80,
                  width: 105,
                  decoration: BoxDecoration(
                    color: context.colors.blackOpacity,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              );
            }),
          ),
          Gaps.vGap12,
          BaseShimmerWidget(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 226,
              decoration: BoxDecoration(
                color: context.colors.blackOpacity,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
          Gaps.vGap12,
          BaseShimmerWidget(
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: 56,
              decoration: BoxDecoration(
                color: context.colors.blackOpacity,
                borderRadius: BorderRadius.circular(10),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
