part of'notices_screen_widgets_imports.dart';


class NoticesListItemWidget extends StatelessWidget {
  const NoticesListItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children:List.generate(6, (index) {
        return const NoticesItemWidget();
      }),
    );
  }
}
