part of 'filter_contract_widgets_imports.dart';

class FilterContractSelectItemWidget extends StatelessWidget {
  final FilterContractController controller;
  final String title;
  final void Function() onTap;
  final int value;
  final int changeValue;
  const FilterContractSelectItemWidget({
    super.key,
    required this.title,
    required this.value,
    required this.changeValue,
    required this.controller,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            SvgPicture.asset(value==changeValue?Res.selectLogo:Res.unselectLogo,),
            Gaps.hGap10,
            Text(
              title,
              style: AppTextStyle.s16_w400(color: context.colors.darkTextColor),
            ),
          ],
        ),
      ),
    );
  }
}
