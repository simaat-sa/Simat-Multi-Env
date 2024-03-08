part of'filter_property_widgets_imports.dart';

class FilterPropertySelectItemWidget extends StatelessWidget {
  final String title;
  const FilterPropertySelectItemWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){},
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10),
        child: Row(
          children: [
            SvgPicture.asset(
              Res.unselectLogo,
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
