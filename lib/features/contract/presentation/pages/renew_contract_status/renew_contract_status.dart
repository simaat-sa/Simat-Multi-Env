part of 'renew_contract_status_imports.dart';

@RoutePage(name: 'RenewContractStatusRoute')
class RenewContractStatus extends StatefulWidget {
  final bool success;

  const RenewContractStatus({super.key, required this.success});

  @override
  State<RenewContractStatus> createState() => _RenewContractStatusState();
}

class _RenewContractStatusState extends State<RenewContractStatus> {
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
            ContractStatusWidget(
              success: widget.success,
            ),
          ],
        ),
      ),
    );
  }
}
