part of 'property_details_widgets_imports.dart';

class PropertySummaryHeaderWidget extends StatelessWidget {
  final PropDetailsModel model;
  final PropModel propModel;

  const PropertySummaryHeaderWidget({super.key, required this.model, required this.propModel});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              alignment: Alignment.center,
              height: 26,
              padding: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(5),
                  border: Border.all(color: context.colors.primary)),
              child: Text(
                "#${propModel.areId}",
                style: AppTextStyle.s14_w500(color: context.colors.primary).copyWith(height: 2),
              ),
            ),
            Gaps.hGap8,
            Text(
              propModel.propType,
              style: AppTextStyle.s16_w400(color: context.colors.brown)
                  .copyWith(overflow: TextOverflow.ellipsis),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                '.',
                style: AppTextStyle.s16_w500(color: context.colors.primary),
              ),
            ),
            Text(
              propModel.contractType.getLocalizedName(),
              style: AppTextStyle.s16_w400(color: context.colors.brown),
            ),
          ],
        ),
        Gaps.vGap15,
        if (propModel.propAddress.isNotEmpty)
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SvgPicture.asset(
                Res.unitLocationLogo,
                height: 16,
                width: 16,
                color: context.colors.primaryText,
              ),
              Gaps.hGap8,
              Expanded(
                child: Text(
                  propModel.propAddress,
                  // "${propModel.propRegion} . ${propModel.propCity}",
                  style: AppTextStyle.s14_w400(
                    color: context.colors.primaryText,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
              )
            ],
          ),
      ],
    );
  }
}
