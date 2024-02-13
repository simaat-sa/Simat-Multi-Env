part of'filter_contract_widgets_imports.dart';


class FilterContractTitleHeaderWidget extends StatelessWidget {
  const FilterContractTitleHeaderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'حالة طلب الصيانة',
          style: AppTextStyle.s18_w500(color: context.colors.darkTextColor),
        ),
      ],
    );
  }
}
