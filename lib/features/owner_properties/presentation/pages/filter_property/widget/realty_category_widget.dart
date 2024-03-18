part of 'filter_property_widgets_imports.dart';

class RealtyCategoryWidget extends StatelessWidget {
  final List<CategoriesModel> categories;
  final FilterPropertyController controller;

  const RealtyCategoryWidget(
      {super.key, required this.categories, required this.controller});

  @override
  Widget build(BuildContext context) {
    return ObsValueConsumer<bool>(
      builder: (context, value) {
        return Column(
          children: List.generate(
            categories.length,
            (index) {
              final item = categories[index];
              return FilterPropertySelectItemWidget(
                title: item.name,
                onTap: () => _onTap(item, value),
                iconPath:
                    item.selected ?? false ? Res.checkmark : Res.checkmarkEmpty,
              );
            },
          ),
        );
      },
      observable: controller.refresh,
    );
  }

  void _onTap(CategoriesModel item, bool val) {
    categories.map((e) => e.selected).toList();
    if (item.selected == true) {
      item.selected = false;
    } else {
      item.selected = true;
    }
    controller.refresh.setValue(!val);
  }
}
