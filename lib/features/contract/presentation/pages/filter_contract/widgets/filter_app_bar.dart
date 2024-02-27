part of 'filter_widgets_imports.dart';

class FilterAppBarWidget extends StatelessWidget {
  const FilterAppBarWidget({super.key});

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
            ),
          ),
        ],
      ),
    );
  }
}
