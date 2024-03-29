part of'payment_tab_imports.dart';


class PaymentTab extends StatefulWidget {
  final String propId;
  final String paymentCount;

  const PaymentTab({
    super.key,
    required this.propId,
    required this.paymentCount,
  });

  @override
  State<PaymentTab> createState() => _PaymentTabState();
}

class _PaymentTabState extends State<PaymentTab> {
late PaymentTabController controller;

@override
  void initState() {
  controller = PaymentTabController(widget.propId);
   super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        PaymentTabHeaderWidget(controller: controller, paymentCount: widget.paymentCount),
        Gaps.vGap14,
        Flexible(
          child: PagedListView(
            pagingController: controller.pagingController,
            builderDelegate: PagedChildBuilderDelegate<PropertiesExpensesModel>(
              itemBuilder: (context, item, index) {
                return PaymentTabItemWidget(
                  model: item,
                );
              },
              firstPageErrorIndicatorBuilder: (context) {
                return Center(
                    child: Text(
                  "حدث خطأ",
                  style: AppTextStyle.s14_w400(color: context.colors.darkTextColor),
                ));
              },
              noItemsFoundIndicatorBuilder: (context) {
                return const EmptyListItemWidget();
              },
            ),
          ),
        ),
      ],
    );
  }
}
