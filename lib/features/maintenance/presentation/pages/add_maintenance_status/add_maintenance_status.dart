part of 'add_maintenance_status_imports.dart';

@RoutePage(name: 'CompleteAddMaintenanceRoute')
class CompleteAddMaintenance extends StatefulWidget {
  final MaintenanceModel? model;

  const CompleteAddMaintenance({super.key, this.model});

  @override
  State<CompleteAddMaintenance> createState() => _CompleteAddMaintenanceState();
}

class _CompleteAddMaintenanceState extends State<CompleteAddMaintenance> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: DefaultAppBar(
        title: '',
        showBack: false,
        actions: [
          InkWell(
            onTap: () => AutoRouter.of(context).pop(),
            child: Padding(
              padding: const EdgeInsetsDirectional.only(end: 20),
              child: Icon(
                Icons.close,
                color: context.colors.darkTextColor,
                size: 35,
              ),
            ),
          )
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CompleteAddFormWidget(
              model: widget.model,
            ),
          ],
        ),
      ),
    );
  }
}
