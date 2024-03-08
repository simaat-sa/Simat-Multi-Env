part of 'maintenance_widgets_imports.dart';

class MaintenanceItemWidget extends StatelessWidget {
  final MaintenanceModel model;
  final MaintenanceController controller;

  const MaintenanceItemWidget({
    super.key,
    required this.model,
    required this.controller,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => controller.contractDialog(context, model),
      child: Container(
        margin: const EdgeInsets.only(top: 10),
        padding: const EdgeInsets.all(10),
        decoration: BoxDecoration(
          color: context.colors.white,
          borderRadius: BorderRadius.circular(10),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Text(
                  model.code,
                  style: AppTextStyle.s16_w400(color: context.colors.darkTextColor),
                ),
                Text(
                  ".",
                  style: AppTextStyle.s16_w500(color: context.colors.primary),
                ),
                Text(
                  model.unitName,
                  style: AppTextStyle.s16_w400(color: context.colors.darkTextColor),
                ),
                const Spacer(),
                Text(
                  model.price,
                  style: AppTextStyle.s18_w500(color: context.colors.green3),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4),
                  child: Text(
                    Translate.of(context).sar,
                    style: AppTextStyle.s16_w400(color: context.colors.green3),
                  ),
                ),
              ],
            ),
            Gaps.vGap10,
            Row(
              children: [
                SvgPicture.asset(
                  Res.calendarIcon,
                  color: context.colors.textColor,
                ),
                Gaps.hGap5,
                Text(
                  model.createdDate,
                  style: AppTextStyle.s16_w400(color: context.colors.textColor).copyWith(
                    height: 2,
                  ),
                ),
                if (model.createdBy.isNotEmpty)
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 4),
                    child: Text(".", style: AppTextStyle.s14_w500(color: context.colors.primary)),
                  ),
                Text(
                  model.createdBy,
                  style: AppTextStyle.s14_w400(color: context.colors.textColor),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 5, bottom: 10),
              child: Divider(
                color: context.colors.greyWhite,
                thickness: 1,
                height: 0,
              ),
            ),
            Row(
              children: [
                Text(
                  Translate.of(context).description,
                  style: AppTextStyle.s14_w400(color: context.colors.textColor),
                ),
                const Spacer(),
                Container(
                  decoration: BoxDecoration(
                    color: model.statusColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                  child: Text(
                    model.statusName,
                    style: AppTextStyle.s14_w400(color: context.colors.white),
                  ),
                ),
              ],
            ),
            Gaps.vGap10,
            Text(
              model.desc,
              style: AppTextStyle.s14_w400(color: context.colors.darkTextColor),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
