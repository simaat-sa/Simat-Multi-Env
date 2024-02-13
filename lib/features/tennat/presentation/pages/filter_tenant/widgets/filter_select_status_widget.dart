part of 'filter_widgets_imports.dart';

class FilterSelectStatusWidget extends StatelessWidget {
  final TenantScreenController controller;

  const FilterSelectStatusWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer<TenantVisibility>(
        observable: controller.selectStatusObs,
        builder: (context, value) {
          return Column(children: [
            const FilterHeaderTitle(title: 'حاله العقد'),
            Gaps.vGap10,
            ...TenantVisibility.values.map((e) {
              return Visibility(
                visible: e != TenantVisibility.non,
                child: FilterSelectItemWidget(
                  changeValue: value.index,
                  onTap: () => controller.selectStatusObs.setValue(e),
                  title: title(e),
                  value: e.index,
                ),
              );
            }),
          ]);
      }
    );
  }

  String title(TenantVisibility tenantVisibility) {
    switch (tenantVisibility) {
      case TenantVisibility.active:
        return Translate.s.active;
      case TenantVisibility.inactive:
        return Translate.s.inactive;
      case TenantVisibility.closed:
        return Translate.s.closed;
      case TenantVisibility.expired:
        return Translate.s.expired;
      default:
        return "";
    }
  }
}
