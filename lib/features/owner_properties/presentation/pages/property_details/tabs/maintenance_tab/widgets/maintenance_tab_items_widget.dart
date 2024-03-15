part of'maintenance_tab_widgets_imports.dart';


class MaintenanceTabItemsWidget extends StatelessWidget {
  const MaintenanceTabItemsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(7, (index) {
        return const MaintenanceTabItemWidget();
      }),
    );
  }
}
