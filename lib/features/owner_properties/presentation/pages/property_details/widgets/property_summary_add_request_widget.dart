part of'property_details_widgets_imports.dart';


class PropertySummaryAddRequestWidget extends StatelessWidget {
  final PropModel model;
  const PropertySummaryAddRequestWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context).push( AddMaintenanceRoute(propModel: model)),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
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
        child: Row(
          children: [
            SvgPicture.asset(
              Res.maintLogo,
              height: 32,
              width: 32,
              color: context.colors.primary,
            ),
            Gaps.hGap12,
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Translate.s.add_maintenance_request,
                  style: AppTextStyle.s14_w400(color: context.colors.primaryText),
                ),
                Gaps.vGap5,
                Text(
                  Translate.of(context).requesting_maintenance,
                  style: AppTextStyle.s13_w400(color: context.colors.darkTextColor),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
