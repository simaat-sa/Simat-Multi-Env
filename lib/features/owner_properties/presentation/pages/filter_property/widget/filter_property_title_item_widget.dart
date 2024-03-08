part of 'filter_property_widgets_imports.dart';

class FilterPropertyTitleItemWidget extends StatelessWidget {
  final String title;

  const FilterPropertyTitleItemWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppTextStyle.s18_w500(color: context.colors.darkTextColor),
        )
      ],
    );
  }
}
