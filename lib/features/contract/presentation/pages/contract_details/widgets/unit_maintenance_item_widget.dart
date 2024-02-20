part of 'tenant_details_widgets_imports.dart';

class UnitMaintenanceItemWidget extends StatelessWidget {
  const UnitMaintenanceItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context).push(const AddMaintenanceRoute()),
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 12),
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(10),
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
                  Translate.s.unit_maintenance,
                  style: AppTextStyle.s14_w400(color: context.colors.primaryText),
                ),
                Gaps.vGap5,
                Text(
                  Translate.s.requesting_maintenance,
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
