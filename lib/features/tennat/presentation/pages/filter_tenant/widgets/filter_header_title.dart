part of 'filter_widgets_imports.dart';

class FilterHeaderTitle extends StatelessWidget {
  final String title;

  const FilterHeaderTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: AppTextStyle.s18_w500(color: context.colors.darkTextColor),
        ),
      ],
    );
  }
}
