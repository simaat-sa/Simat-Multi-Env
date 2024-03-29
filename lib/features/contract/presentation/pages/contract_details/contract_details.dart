part of 'contract_details_imports.dart';

@RoutePage(name: 'ContractDetailsRoute')
class ContractDetails extends StatefulWidget {
  final ContractModel model;
  const ContractDetails({super.key, required this.model});

  @override
  State<ContractDetails> createState() => _ContractDetailsState();
}

class _ContractDetailsState extends State<ContractDetails> {
  late ContractDetailsController controller;

  @override
  void initState() {
    controller = ContractDetailsController(widget.model);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      initialIndex: 0,
      child: Scaffold(
        appBar: DefaultAppBar(
          centerTitle: false,
          title: "${widget.model.unitName} - ${widget.model.blockName}",
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
                    Text(Translate.of(context).payments),
                  ]),
              Flexible(
                child: TabBarView(
                  children: [
                    SummaryViewWidget(controller: controller),
                    Payment(model: widget.model, controller: controller),
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
