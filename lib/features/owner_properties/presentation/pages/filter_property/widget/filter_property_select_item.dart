part of'filter_property_widgets_imports.dart';

class FilterPropertySelectItemWidget extends StatelessWidget {
  final String title;
  final String iconPath;
  final Function()onTap;
  const FilterPropertySelectItemWidget({super.key, required this.title, required this.onTap, required this.iconPath});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            SvgPicture.asset(
              iconPath
            ),
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
