part of 'tenant_details_widgets_imports.dart';

class RequiredCostButtonWidget extends StatelessWidget {
  final ContractModel model;

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
            Translate.of(context).required,
            style: AppTextStyle.s16_w500(color: context.colors.white),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5),
            child: Text(
              model.duePrice,
              style: AppTextStyle.s20_w500(color: context.colors.white),
            ),
          ),
          Text(
            Translate.of(context).sar,
            style: AppTextStyle.s14_w400(color: context.colors.white),
          ),
          const Spacer(),
          Text(
            Translate.of(context).pay_now,
            style: AppTextStyle.s16_w500(color: context.colors.white),
          ),
        ],
      ),
    );
  }
}
