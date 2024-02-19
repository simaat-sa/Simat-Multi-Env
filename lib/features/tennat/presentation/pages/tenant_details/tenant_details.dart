part of 'tenant_details_imports.dart';

@RoutePage(name: 'TenantDetailsRoute')
class TenantDetails extends StatefulWidget {
  final TenantModel model;
  const TenantDetails({super.key, required this.model});

  @override
  State<TenantDetails> createState() => _TenantDetailsState();
}

class _TenantDetailsState extends State<TenantDetails> {
  late TenantDetailsController controller;

  @override
  void initState() {
    controller = TenantDetailsController(widget.model);
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
          title: widget.model.unitName,
          showBack: true,
        ),
        body: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 22),
          child: Column(
            children: [
              TabBar(
                  dividerColor: context.colors.greyWhite,
                  unselectedLabelColor: context.colors.primaryGrey,
                  unselectedLabelStyle: AppTextStyle.s16_w500(color: context.colors.primary).copyWith( fontFamily: "Tajawal"),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelPadding: const EdgeInsets.symmetric(vertical: 13),
                  labelStyle: AppTextStyle.s16_w500(color: context.colors.primary).copyWith( fontFamily: "Tajawal"),
                  tabs: const [
                    Text('الملخص'),
                    Text('المدفوعات'),
                  ]),
              Flexible(
                child: TabBarView(
                  children: [
                    SummaryViewWidget(controller: controller),
                    Container(color: Colors.white,),
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
