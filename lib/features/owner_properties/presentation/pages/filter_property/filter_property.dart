part of 'filter_property_imports.dart';

@RoutePage(name: 'FilterPropertyRoute')
class FilterProperty extends StatefulWidget {
  final FilterPropertyController filterController;

  const FilterProperty({super.key, required this.filterController});

  @override
  State<FilterProperty> createState() => _FilterPropertyState();
}

class _FilterPropertyState extends State<FilterProperty> {

  late FilterPropertyController controller;

  @override
  void initState() {
    controller = widget.filterController;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 22),
        color: context.colors.white,
        width: MediaQuery.of(context).size.width,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const FilterAppBarWidget(),
            RequesterConsumer<FilterPropertyModel>(
              requester: controller.requester,
              successBuilder: (context, data) {
                return Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      FilterPropertyTitleItemWidget(title: Translate.s.prop_type),
                      RealtyTypeWidget(
                        types: data.types,
                        controller: controller,
                      ),
                      Divider(
                        thickness: 1,
                        height: 30,
                        color: context.colors.backgroundLight,
                      ),
                      FilterPropertyTitleItemWidget(title: Translate.s.prop_category),
                      RealtyCategoryWidget(
                        categories: data.categories,
                        controller: controller,
                      )
                    ],
                  ),
                );
              },
              failureBuilder: (context, error, callback) {
                callback.call();
                return ElevatedButton(
                  onPressed: () => controller.requester.request(),
                  child: Text(
                    Translate.s.retry,
                    style: AppTextStyle.s14_w500(
                      color: context.colors.blackOpacity,
                    ),
                  ),
                );
              },
              loadingBuilder: (context) {
                return const CircularProgressIndicator();
              },
            ),
            FilterButtonsWidget(
              onFilterTap: () {
                controller.onFilter();
                Navigator.pop(context);
              },
              onResetTap: () {
                controller.onReset();
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
    );
  }
}
