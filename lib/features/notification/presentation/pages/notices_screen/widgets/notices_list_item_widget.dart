part of'notices_screen_widgets_imports.dart';


class NoticesListItemWidget extends StatelessWidget {
  final List<NoticesModel> list;
  const NoticesListItemWidget({super.key, required this.list});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:List.generate(list.length, (index) {
        return NoticesItemWidget(model:list[index]);
      }),
    );
  }
}
