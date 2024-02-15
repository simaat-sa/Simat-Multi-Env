part of'add_contract_widgets_imports.dart';


class AddContractAppBarWidget extends StatelessWidget {
  const AddContractAppBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 50),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('طلب صيانة جديد',style: AppTextStyle.s24_w500(color: context.colors.darkTextColor),),
          InkWell(
            onTap: () => AutoRouter.of(context).pop(),
              child: Icon(Icons.close,color: context.colors.darkTextColor,)),
        ],
      ),
    );
  }
}
