part of 'property_details_widgets_imports.dart';

class PropertySummaryHeaderWidget extends StatelessWidget {
  final PropModel model;

  const PropertySummaryHeaderWidget({super.key, required this.model});

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
                "#${model.statusCode}",
                style: AppTextStyle.s14_w500(color: context.colors.primary).copyWith(height: 2),
              ),
            ),
            Gaps.hGap8,
            Text(
              model.unitName,
              style: AppTextStyle.s16_w400(color: context.colors.brown).copyWith(overflow: TextOverflow.ellipsis),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Text(
                '.',
                style: AppTextStyle.s16_w500(color: context.colors.primary),
              ),
            ),
            Text(
              model.contractType.getLocalizedName(),
              style: AppTextStyle.s16_w400(color: context.colors.brown),
            ),
          ],
        ),
        Gaps.vGap15,
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
                '${model.propId} ${model.propRegion}.${model.areId}.${model.propRegion}.${model.propCity}',
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
