part of 'units_imports.dart';

class Units extends StatelessWidget {
  const Units({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children:  [
        const UnitItemsWidget(),
        Gaps.vGap12,
      ],
    );
  }
}
