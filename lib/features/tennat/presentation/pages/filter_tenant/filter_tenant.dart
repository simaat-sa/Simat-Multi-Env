part of 'filter_tenant_imports.dart';

@RoutePage(name: 'FilterTenantRoute')
class FilterTenant extends StatefulWidget {
  const FilterTenant({super.key});

  @override
  State<FilterTenant> createState() => _FilterTenantState();
}

class _FilterTenantState extends State<FilterTenant> {
  final FilterTenantController controller = FilterTenantController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: DefaultAppBar(
        title: 'تصفية',
        showBack: false,
        actions: [
          IconButton(
            icon: const Icon(Icons.close),
            onPressed: () => Navigator.of(context).pop(),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        child: Column(
          children: [
            const FilterHeaderTitle(
              title: 'حاله العقد',
            ),
            Gaps.vGap10,
            FilterSelectStatusWidget(
              controller: controller,
            ),
            Divider(
              thickness: 1,
              height: 30,
              color: context.colors.backgroundLight,
            ),
            const FilterHeaderTitle(
              title: 'نوع العقد',
            ),
            Gaps.vGap10,
            FilterSelectTypeWidget(
              controller: controller,
            ),
            Divider(
              thickness: 1,
              height: 30,
              color: context.colors.backgroundLight,
            ),
            const Spacer(),
            const FilterButtonsWidget(),
          ],
        ),
      ),
    );
  }
}
