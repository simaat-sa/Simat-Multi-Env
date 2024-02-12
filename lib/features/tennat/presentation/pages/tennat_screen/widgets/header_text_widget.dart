part of 'tenant_screen_widgets_imports.dart';

class HeaderTextWidget extends StatelessWidget {
  final List<TenantModel> listTenant;
  const HeaderTextWidget({super.key, required this.listTenant});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          Translate.of(context).rented_units([listTenant.length]),
          style: AppTextStyle.s14_w400(color: context.colors.blackOpacity),
        ),
      ],
    );
  }
}
