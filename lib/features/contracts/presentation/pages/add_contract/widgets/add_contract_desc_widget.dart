part of 'add_contract_widgets_imports.dart';

class AddContractDescWidget extends StatelessWidget {
  const AddContractDescWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              SvgPicture.asset(
                Res.detailsLogo,
                color: context.colors.primaryText,
                height: 24,
                width: 24,
              ),
              Gaps.hGap13,
              Text(
                'وصف الصيانة',
                style: AppTextStyle.s16_w400(color: context.colors.primaryText),
              ),
            ],
          ),
          Gaps.vGap12,
          Text(
            'عمل الصيانة المحددة وعمل فحص لمحتويات الوحدة ورفع الملاحظات عمل الصيانة المحددة وعمل فحص لمحتويات الوحدة ورفع الملاحظات',
            style: AppTextStyle.s14_w400(color: context.colors.darkTextColor),
          ),
        ],
      ),
    );
  }
}
