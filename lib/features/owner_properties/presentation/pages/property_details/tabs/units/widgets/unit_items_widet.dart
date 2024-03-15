part of 'units_widgets_imports.dart';

class UnitItemsWidget extends StatelessWidget {
  const UnitItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(10, (index) {
        return const UnitItemWidget();
      }),
    );
  }
}
