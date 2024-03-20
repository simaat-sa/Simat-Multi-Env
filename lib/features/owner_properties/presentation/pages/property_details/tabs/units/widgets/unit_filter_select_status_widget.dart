part of'units_widgets_imports.dart';


class UnitFilterSelectStatusWidget extends StatelessWidget {
  final UnitController controller;
  const UnitFilterSelectStatusWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer<PropDetailsStatus>(
      observable: controller.selectStatusObs,
      builder: (context,value) {
        return Column(
          children: [
              FilterHeaderTitle(title: Translate.s.property_status),
              ...PropDetailsStatus.values.map((e) {
                return Visibility(
                  visible: e != PropDetailsStatus.non,
                  child: FilterSelectItemWidget(
                    changeValue: value.index,
                    onTap: () {
                      controller.selectStatusObs.setValue(e);
                    },
                    title: e.getLocalizedName(),
                    value: e.index,
                  ),
              );
            }),
          ],
        );
      }
    );
  }
}
