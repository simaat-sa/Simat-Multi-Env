part of 'tenant_details_widgets_imports.dart';

class RenewContractItemWidget extends StatelessWidget {
  final TenantModel model;
  const RenewContractItemWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SvgPicture.asset(
            Res.renewContractLogo,
            height: 32,
            width: 32,
            color: context.colors.primary,
          ),
          Gaps.hGap12,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text('تجديد العقد',style: AppTextStyle.s14_w400(color: context.colors.primaryText),),
              Gaps.vGap5,
              Text('طلب تجديد العقد الحالي',style: AppTextStyle.s13_w400(color: context.colors.darkTextColor),),
            ],
          ),
          const Spacer(),
          Text('ينتهي ${model.date}',style: AppTextStyle.s13_w400(color: context.colors.errorColor),),
        ],
      ),
    );
  }
}
