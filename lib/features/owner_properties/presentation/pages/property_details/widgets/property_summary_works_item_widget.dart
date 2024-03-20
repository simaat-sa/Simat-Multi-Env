part of 'property_details_widgets_imports.dart';

class PropertySummaryWorksItemWidget extends StatelessWidget {
  final PropDetailsModel model;
  final String title;
  final bool visiblePercent;
  final String allRented;
  final String allProp;

  const PropertySummaryWorksItemWidget({
    super.key,
    required this.model,
    required this.title,
    this.visiblePercent = false,
    required this.allRented,
    required this.allProp,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsetsDirectional.only(start: 10, end: 10, top: 17),
      height: 75,
      width: 100,
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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Visibility(
                visible: visiblePercent,
                child: Text(
                  model.propRate,
                  style: AppTextStyle.s16_w500(color: context.colors.secondary),
                ),
              ),
              const Spacer(),
              Text(allProp, style: AppTextStyle.s16_w400(color: context.colors.primaryText)),
              Text('/', style: AppTextStyle.s16_w400(color: context.colors.primaryText)),
              Text(allRented, style: AppTextStyle.s24_w400(color: context.colors.darkTextColor)),
            ],
          ),
          Gaps.vGap12,
          Text(
            title,
            style: AppTextStyle.s14_w400(
              color: context.colors.darkTextColor,
            ),
            overflow: TextOverflow.ellipsis,
          ),
        ],
      ),
    );
  }
}
