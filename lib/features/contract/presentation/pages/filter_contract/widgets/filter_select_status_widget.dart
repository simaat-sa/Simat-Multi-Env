part of 'filter_widgets_imports.dart';

class FilterSelectStatusWidget extends StatelessWidget {
  final ContractScreenController controller;

  const FilterSelectStatusWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer<TenantVisibility>(
        observable: controller.selectStatusObs,
        builder: (context, value) {
          return Column(children: [
            FilterHeaderTitle(title: Translate.s.contract_status),
            Gaps.vGap10,
            ...TenantVisibility.values.map((e) {
              return Visibility(
                visible: e != TenantVisibility.non,
                child: FilterSelectItemWidget(
                  changeValue: value.index,
                  onTap: () => controller.selectStatusObs.setValue(e),
                  title: e.getLocalizedName(),
                  value: e.index,
                ),
              );
            }),
          ]);
        });
  }
}
