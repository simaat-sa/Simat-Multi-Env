part of 'units_widgets_imports.dart';

class UnitItemsWidget extends StatelessWidget {
  final List<ContractModel> listContract;

  const UnitItemsWidget({super.key, required this.listContract});

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: ListView.builder(
        padding: const EdgeInsets.only(bottom: 12).r,
        itemCount: listContract.length,
        itemBuilder: (context, index) {
        return UnitItemWidget(
          model: listContract[index],
        );
      },),
    );
  }
}
