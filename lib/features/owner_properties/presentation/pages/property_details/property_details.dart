part of 'property_details_imports.dart';

@RoutePage(name: 'PropertyDetailsRoute')
class PropertyDetails extends StatefulWidget {
  final PropModel model;

  const PropertyDetails({super.key, required this.model});

  @override
  State<PropertyDetails> createState() => _PropertyDetailsState();
}

class _PropertyDetailsState extends State<PropertyDetails> {
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
            const PropertyTabBarWidget(),
            Gaps.vGap16,
            Flexible(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TabBarView(
                  children: [
                    PropertySummaryView(model: widget.model),
                    const Units(),
                    const MaintenanceTab(),
                    const PaymentTabItemWidget(),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
