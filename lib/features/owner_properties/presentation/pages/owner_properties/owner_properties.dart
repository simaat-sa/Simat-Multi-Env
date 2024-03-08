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
    controller.requestPropertyData();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(),
      body: RequesterConsumer(
        requester: controller.requester,
        successBuilder: (context, data) {
          return Padding(
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
            child: Column(
              children: [
                FilterItemWidget(
                  showFilterIcon: true,
                  onChange: (val) {
                    controller.searchText = val;
                    controller.onFilter();
                  },
                  onSubmit: (value) {
                    controller.searchText = value;
                    controller.onFilter();
                  },
                  onTap: () => controller.filterSheet(context),
                ),
                Gaps.vGap10,
                Flexible(
                  child: ListView(
                    children: [
                      Column(
                        children: [
                          ...List.generate(
                            data.length,
                            (index) {
                              return PropertyItemWidget(model: data[index]);
                            },
                          )
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            ),
          );
        },
        failureBuilder: (context, error, callback) {
          return FailureViewWidget(onTap: callback);
        },
        loadingBuilder: (context) {
          return const PropertyLoadingListWidget();
        },
      ),
    );
  }
}
