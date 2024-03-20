part of 'units_widgets_imports.dart';

class UnitFilterWidget extends StatelessWidget {
  final UnitController controller;

  const UnitFilterWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      color: context.colors.background,
      width: MediaQuery.of(context).size.width,
      child: Column(
        children: [
          const FilterAppBarWidget(),
          Flexible(
            child: ListView(
              children: [
                UnitFilterSelectStatusWidget(
                  controller: controller,
                ),
              ],
            ),
          ),
          FilterButtonsWidget(
            onFilterTap: () {
              controller.onFilter();
              Navigator.pop(context);
            },
            onResetTap: () {
              controller.onResetFilter();
              Navigator.pop(context);
            },
          ),
        ],
      ),
    );
  }
}
