part of'filter_property_widgets_imports.dart';


class FilterPropertyAppBar extends StatelessWidget {
  const FilterPropertyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 30, top: kToolbarHeight),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Gaps.hGap22,
          Text(
            Translate.of(context).filter,
            style: AppTextStyle.s24_w500(color: context.colors.darkTextColor),
          ),
          InkWell(
            onTap: () => Navigator.of(context).pop(),
            child: Icon(
              Icons.close,
              color: context.colors.darkTextColor,
              size: 35,
            ),
          ),
        ],
      ),
    );
  }
}
