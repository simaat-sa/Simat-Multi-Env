part of 'filter_tenant_imports.dart';

@RoutePage(name: 'FilterTenantRoute')
class FilterTenant extends StatelessWidget {
  final TenantScreenController controller;

  const FilterTenant({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 22),
      color: context.colors.white,
      width: MediaQuery.of(context).size.width,
      child: Container(
        color: context.colors.white,
        child: Column(
          children: [
            const FilterAppBarWidget(),
            Flexible(
              child: ListView(
                padding: EdgeInsets.zero,
                children: [
                  FilterSelectStatusWidget(controller: controller),
                  Divider(thickness: 1, height: 30, color: context.colors.backgroundLight),
                  FilterSelectTypeWidget(controller: controller),
                  Divider(
                    thickness: 1,
                    height: 30,
                    color: context.colors.backgroundLight,
                  ),
                ],
              ),
            ),
            FilterButtonsWidget(controller: controller),
          ],
        ),
      ),
    );
  }
}
