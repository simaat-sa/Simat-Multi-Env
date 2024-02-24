part of 'filter_maintenance_widgets_imports.dart';

class FilterMaintenanceSelectItemWidget extends StatelessWidget {
  final String title;
  final void Function() onTap;
  final int value;
  final int changeValue;
  const FilterMaintenanceSelectItemWidget({
    super.key,
    required this.title,
    required this.value,
    required this.changeValue,
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
