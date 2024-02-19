part of 'tenant_details_widgets_imports.dart';

class RequiredCostButtonWidget extends StatelessWidget {
  final TenantModel model;

  const RequiredCostButtonWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 12),
      padding: const EdgeInsets.symmetric(vertical: 14, horizontal: 13),
      decoration: BoxDecoration(
        color: context.colors.primary,
        borderRadius: BorderRadius.circular(7),
      ),
      child: Row(
        children: [
          Text(
            'دفع المطلوب إلكترونياً',
            style: AppTextStyle.s16_w500(color: context.colors.white),
          ),
          const Spacer(),
          Row(
            children: [
              Text(
                model.price,
                style: AppTextStyle.s20_w500(color: context.colors.white),
              ),
              Text(
                ' ر.س',
                style: AppTextStyle.s14_w400(color: context.colors.white),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
