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
          title: "${widget.model.unitName} - ${widget.model.propType.getLocalizedName()}",
          showBack: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              TabBar(
                  dividerColor: context.colors.greyWhite,
                  unselectedLabelColor: context.colors.primaryGrey,
                  unselectedLabelStyle: AppTextStyle.s16_w500(color: context.colors.primary),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelPadding: const EdgeInsets.symmetric(vertical: 13),
                  labelStyle: AppTextStyle.s16_w500(color: context.colors.primary),
                  tabs: [
                    Text(Translate.of(context).summary),
                    const Text("وحدات [10]"),
                    const Text("صيانة [7]"),
                    const Text("مصروفات [5]"),
                  ]),
              Gaps.vGap16,
              Flexible(
                child: TabBarView(
                  children: [
                    PropertySummaryView(model: widget.model),
                    const Units(),
                    const MaintenanceTab(),
                    const PaymentTabItemWidget(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
