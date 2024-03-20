part of 'owner_properties_imports.dart';

class OwnerProperties extends StatefulWidget {
  const OwnerProperties({super.key});

  @override
  State<OwnerProperties> createState() => _OwnerPropertiesState();
}

class _OwnerPropertiesState extends State<OwnerProperties> {
  final OwnerPropertyController controller = OwnerPropertyController();

  @override
  void initState() {
    controller.initPaginationController();
    controller.filterController = FilterPropertyController(controller);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Column(
          children: [
            FilterItemWidget(
              filterApply: controller.filterAppliedObs,
              onChange: (val) {
                controller.searchText = val;
                controller.onFilter();
              },
              onSubmit: (value) {
                controller.searchText = value;
                controller.onFilter();
              },
              onTap: (){
                AutoRouter.of(context).push( FilterPropertyRoute(filterController:controller.filterController)).then((value) {
                  controller.handleFilterApplied();
                });
              },
            ),
            Gaps.vGap10,
            Flexible(
              child: PagedListView(
                pagingController: controller.pagingController,
                builderDelegate: PagedChildBuilderDelegate<PropModel>(
                  itemBuilder: (context, item, index) {
                    return PropertyItemWidget(
                      model: item,
                    );
                  },
                  firstPageErrorIndicatorBuilder: (context) {
                    return const PropertyLoadingListWidget();
                  },
                  noItemsFoundIndicatorBuilder: (context) {
                    return const EmptyListItemWidget();
                  },
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
