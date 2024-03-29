part of 'property_details_imports.dart';

@RoutePage(name: 'PropertyDetailsRoute')
class PropertyDetails extends StatefulWidget {
  final PropModel model;

  const PropertyDetails({super.key, required this.model});

  @override
  State<PropertyDetails> createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends State<PropertyDetails> {
  late PropertyDetailsController controller;

  @override
  void initState() {
    controller = PropertyDetailsController(widget.model);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      initialIndex: 0,
      child: Scaffold(
        backgroundColor: context.colors.background,
        appBar: DefaultAppBar(
          centerTitle: false,
          title: "${widget.model.unitName} - ${widget.model.contractType.getLocalizedName()}",
          showBack: true,
          backgroundColor: context.colors.white,
        ),
        body: Column(
          children: [
            PropertyTabBarWidget(controller: controller),
            Gaps.vGap16,
            Flexible(
              child: ObsValueConsumer<PropDetailsTabsCount>(
                  observable: controller.tabsCountObs,
                  builder: (context, value) {
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: TabBarView(
                        children: [
                          PropertySummaryView(propModel: widget.model, controller: controller),
                          Units(model: widget.model),
                          MaintenanceTab(
                            areaId: widget.model.areId,
                            maintCount: value.maintenanceCount,
                          ),
                          PaymentTab(
                            propId: widget.model.areId,
                            paymentCount: value.paymentCount,
                          ),
                        ],
                      ),
                    );
                  }),
            ),
          ],
        ),
      ),
    );
  }
}
