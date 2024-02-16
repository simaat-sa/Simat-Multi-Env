part of 'add_contract_status_imports.dart';

@RoutePage(name: 'AddContractSuccessRoute')
class CompleteAddContract extends StatefulWidget {
  final ContractModel? model;

  const CompleteAddContract({super.key, this.model});

  @override
  State<CompleteAddContract> createState() => _CompleteAddContractState();
}

class _CompleteAddContractState extends State<CompleteAddContract> {
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
                size: 30,
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
