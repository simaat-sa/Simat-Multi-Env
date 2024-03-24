part of 'filter_property_widgets_imports.dart';

class RealtyTypeWidget extends StatelessWidget {
  final List<TypesModel> types;
  final FilterPropertyController controller;

  const RealtyTypeWidget({super.key, required this.types, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer<bool>(
      builder: (context, value) {
        return Column(
          children: List.generate(
            types.length,
                (index) {
              final item = types[index];
              return FilterPropertySelectItemWidget(
                title: item.getLocalizedName(),
                onTap: () => _onTap(item,value),
                iconPath: item.selected ?? false ? Res.checkmark : Res.checkmarkEmpty,
              );
            },
          ),
        );
      },
      observable: controller.refresh,
    );
  }

  void _onTap(TypesModel item,bool val) {
    types.map((e) => e.selected).toList();
    if (item.selected == true) {
      item.selected = false;
    } else {
      item.selected = true;
    }
    controller.refresh.setValue(!val);
  }}
