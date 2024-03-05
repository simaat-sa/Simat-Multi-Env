part of 'menu_widgets_imports.dart';

class NotifySwipeWidget extends StatelessWidget {
  final MenuControllerTap controller;

  const NotifySwipeWidget({super.key, required this.controller});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        AppSettings.openAppSettings(type: AppSettingsType.notification);
      },
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        height: 45,
        decoration: BoxDecoration(
          border: Border.all(color: context.colors.greyWhite),
          color: context.colors.white,
          borderRadius: BorderRadius.circular(5),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: Text(
                Translate.of(context).notify,
                style: AppTextStyle.s16_w400(color: context.colors.darkTextColor),
              ),
            ),
            Icon(
              Icons.arrow_forward_ios_outlined,
              color: context.colors.black,
              size: 15,
            ),
            // ObsValueConsumer(
            //     observable: controller.switchObs,
            //     builder: (context, value) {
            //       return FlutterSwitch(
            //         inactiveColor: context.colors.disableGray,
            //         activeColor: context.colors.primary,
            //         toggleColor: context.colors.white,
            //         inactiveToggleColor: context.colors.white,
            //         activeSwitchBorder: Border.all(color: context.colors.greyWhite),
            //         toggleSize: 22,
            //         width: 40,
            //         height: 23,
            //         padding: 0,
            //         value: value,
            //         onToggle: (value) => controller.onChanged(value),
            //       );
            //     }),
          ],
        ),
      ),
    );
  }
}
