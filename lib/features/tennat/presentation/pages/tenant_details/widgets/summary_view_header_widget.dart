part of 'tenant_details_widgets_imports.dart';

class SummaryViewHeaderWidget extends StatelessWidget {
  final TenantModel model;
  const SummaryViewHeaderWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'عقد',
          style: AppTextStyle.s16_w400(color: context.colors.darkTextColor),
        ),
        Gaps.hGap12,
        Container(
          alignment: Alignment.center,
          height: 26,
          padding: const EdgeInsets.symmetric(horizontal: 5),
          decoration: BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: context.colors.primary)
          ),
          child: Text(
            "#${model.code}",
            style: AppTextStyle.s14_w400(color: context.colors.primary).copyWith(height: 2.2),
          ),
        ),
        const Spacer(),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
          decoration: BoxDecoration(
            color: model.status.getColor(),
            borderRadius: BorderRadius.circular(5),
          ),
          child: Text(
            model.status.getLocalizedName(),
            style: AppTextStyle.s12_w500(color: context.colors.white),
          ),
        ),
      ],
    );
  }
}
