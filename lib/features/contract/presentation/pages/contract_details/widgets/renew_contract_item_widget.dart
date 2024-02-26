part of 'tenant_details_widgets_imports.dart';

class RenewContractItemWidget extends StatelessWidget {
  final ContractDetailsController controller;
  const RenewContractItemWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 10),
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
          InkWell(
            onTap: () => controller.renewContract(context),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  Translate.of(context).contract_renewal,
                  style: AppTextStyle.s14_w400(color: context.colors.primaryText),
                ),
                Gaps.vGap5,
                Text(
                  Translate.of(context).request_to_renew_contract,
                  style: AppTextStyle.s13_w400(color: context.colors.darkTextColor)
                      .copyWith(overflow: TextOverflow.ellipsis),
                ),
              ],
            ),
          ),
          const Spacer(),
          Text(
            '${Translate.of(context).expired} ${controller.model.date}',
            style: AppTextStyle.s13_w400(color: context.colors.errorColor),
          ),
        ],
      ),
    );
  }
}
