part of 'maintenance_tab_imports.dart';

class MaintenanceTab extends StatelessWidget {
  const MaintenanceTab({super.key});

  @override
  Widget build(BuildContext context) {
    return  ListView(
      children: [
        const MaintenanceTabItemsWidget(),
        Gaps.vGap12,
      ],
    );
  }
}
