part of'complete_add_widgets_imports.dart';



class CompleteAddButtonWidget extends StatelessWidget {
  const CompleteAddButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return AppTextButton.maxCustom(
      onPressed: () {},
      bgColor: context.colors.primary,
      txtColor: context.colors.white,
      textSize: 14,
      maxHeight: 45,
      text: ' طلب صيانة جديد ',
    );
  }
}
