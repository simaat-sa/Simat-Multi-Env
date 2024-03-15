part of 'property_details_widgets_imports.dart';

class PropertySummaryCostItemWidget extends StatelessWidget {
  final PropModel model;
  const PropertySummaryCostItemWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12),
            child: Row(
              children: [
                SvgPicture.asset(Res.balanceLogo, height: 32, width: 32),
                Gaps.hGap10,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('الرصيد', style: AppTextStyle.s14_w400(color: context.colors.primaryText)),
                      Gaps.vGap5,
                      Row(
                        children: [
                          Text(
                            "23123123213",
                            style: AppTextStyle.s18_w500(color: context.colors.green3),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Text(
                              Translate.of(context).sar,
                              style: AppTextStyle.s14_w400(color: context.colors.green3),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Gaps.hGap26,
                Container(
                  height: 38,
                  width: 2,
                  color: context.colors.background,
                ),
                Gaps.hGap10,
                SvgPicture.asset(Res.paymentLogo, height: 32, width: 32),
                Gaps.hGap10,
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('المستحق', style: AppTextStyle.s14_w400(color: context.colors.primaryText)),
                      Gaps.vGap5,
                      Row(
                        children: [
                          Text(
                            model.duePrice,
                            style: AppTextStyle.s18_w500(color: context.colors.green3),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 4),
                            child: Text(
                              Translate.of(context).sar,
                              style: AppTextStyle.s14_w400(color: context.colors.green3),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Gaps.vGap13,
          CostItemsListWidget(model: model),
        ],
      ),
    );
  }
}
