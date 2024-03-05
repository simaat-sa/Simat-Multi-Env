part of 'payment_imports.dart';

class Payment extends StatefulWidget {
  final ContractDetailsController controller;
  final ContractModel model;

  const Payment({super.key, required this.controller, required this.model});

  @override
  State<Payment> createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return RequesterConsumer(
      requester: widget.controller.requester,
      successBuilder: (context, data) {
        return Visibility(
          visible: data.isNotEmpty,
          replacement: const EmptyListItemWidget(),
          child: Column(
            children: [
              Flexible(
                child: ListView(
                  padding: const EdgeInsets.symmetric(vertical: 16).r,
                  children: [
                    PaymentHeaderWidget(model: widget.model),
                    Gaps.vGap14,
                    PaymentListItemsWidget(
                      list: data,
                      controller: widget.controller,
                    ),
                    Gaps.vGap10,
                  ],
                ),
              ),
              PaymentPriceDetailsItemWidget(controller: widget.controller),
              PaymentButtonWidget(controller: widget.controller),
            ],
          ),
        );
      },
      failureBuilder: (context, error, callback) {
        return  FailureItemWidget(onTapRefresh: callback);
      },
      loadingBuilder: (context) {
        return const PaymentLoadingListWidget();
      },
    );
  }
}
