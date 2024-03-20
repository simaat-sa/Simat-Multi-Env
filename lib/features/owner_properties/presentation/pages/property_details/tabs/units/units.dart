part of 'units_imports.dart';

class Units extends StatefulWidget {
  final PropModel model;


  const Units({
    super.key,
    required this.model
  });

  @override
  State<Units> createState() => _UnitsState();
}

class _UnitsState extends State<Units> {
  late UnitController controller;

  @override
  void initState() {
    controller = UnitController(widget.model);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return RequesterConsumer(
      requester: controller.requester,
      successBuilder: (context, data) {
        return Visibility(
          visible: data.isNotEmpty,
          replacement: const EmptyListItemWidget(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              UnitFilterHeaderWidget(controller: controller, listModel: data),
              Gaps.vGap12,
              UnitItemsWidget(
                listContract: data,
              ),
            ],
          ),
        );
      },
      failureBuilder: (context, error, callback) {
        return FailureViewWidget(onTap: callback);
      },
      loadingBuilder: (context) {
        return const UnitLoadingListWidget();
      },
    );
  }
}
