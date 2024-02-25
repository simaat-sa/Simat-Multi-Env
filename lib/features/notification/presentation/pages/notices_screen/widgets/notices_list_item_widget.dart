part of 'notices_screen_widgets_imports.dart';

class NoticesListItemWidget extends StatelessWidget {
  final List<NoticesModel> list;
final NoticesScreenController controller;
  const NoticesListItemWidget({super.key, required this.list, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        ...List.generate(list.length, (index) {
          return NoticesItemWidget(model: list[index]);
        }),
      ],
    );
  }
}
