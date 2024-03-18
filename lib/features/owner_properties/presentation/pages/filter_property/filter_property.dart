part of 'filter_property_imports.dart';

@RoutePage(name: 'FilterPropertyRoute')
class FilterProperty extends StatefulWidget {
  final OwnerPropertyController ownerController;

  const FilterProperty({super.key, required this.ownerController});

  @override
  State<FilterProperty> createState() => _FilterPropertyState();
}

class _FilterPropertyState extends State<FilterProperty> {
  late FilterPropertyController controller;

  @override
  void initState() {
    controller = FilterPropertyController(widget.ownerController);
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
            const FilterPropertyAppBar(),
            RequesterConsumer<FilterPropertyModel>(
              requester: controller.requester,
              successBuilder: (context, data) {
                return Expanded(
                  child: ListView(
                    padding: EdgeInsets.zero,
                    children: [
                      const FilterPropertyTitleItemWidget(title: 'نوع العقار'),
                      RealtyTypeWidget(
                        types: data.types,
                        controller: controller,
                      ),
                      Divider(
                        thickness: 1,
                        height: 30,
                        color: context.colors.backgroundLight,
                      ),
                      const FilterPropertyTitleItemWidget(title: 'فئة العقار'),
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
                    "حدث خطأ المحاولة مرة اخرى",
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
            FilterPropertyButtonsWidget(controller: controller),
          ],
        ),
      ),
    );
  }
}
