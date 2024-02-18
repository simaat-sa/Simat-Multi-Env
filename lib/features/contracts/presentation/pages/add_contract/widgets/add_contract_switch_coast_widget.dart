part of 'add_contract_widgets_imports.dart';

class AddContractSwitchCoastWidget extends StatelessWidget {
  final AddContractController controller;
  const AddContractSwitchCoastWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 13),
      height: 45,
      decoration: BoxDecoration(
        border: Border.all(color: context.colors.greyWhite),
        color: context.colors.white,
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          SvgPicture.asset(
            Res.coinLogo,
            height: 22,
            width: 22,
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                Translate.s.cost_at_my_own_expense,
                style: AppTextStyle.s16_w400(color: context.colors.primaryText),
              ),
            ),
          ),
          ObsValueConsumer(
            observable: controller. switchObs,
            builder: (context,value) {
              return FlutterSwitch(
                inactiveColor: context.colors.disableGray,
                activeColor: context.colors.primary,
                toggleColor: context.colors.white,
                inactiveToggleColor: context.colors.white,
                activeSwitchBorder: Border.all(color: context.colors.greyWhite),
                toggleSize: 22,
                width: 40,
                height: 23,
                padding: 0,
                value: value,
                onToggle: (value) =>controller.onChanged(value),
              );
            }
          ),
        ],
      ),
    );
  }
}
