part of 'tenant_details_widgets_imports.dart';

class RequiredCostWidget extends StatelessWidget {
  final TenantModel model;

  const RequiredCostWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 12),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Row(
            children: [
              SvgPicture.asset(
                Res.paymentLogo,
                height: 32,
                width: 32,
                color: context.colors.primary,
              ),
              Gaps.hGap22,
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'قسط أملاك',
                    style: AppTextStyle.s14_w400(color: context.colors.primaryText),
                  ),
                  Gaps.vGap8,
                  Row(
                    children: [
                      Text(
                        model.price,
                        style: AppTextStyle.s18_w500(color: context.colors.green3),
                      ),
                      Text(
                        " ر.س",
                        style: AppTextStyle.s14_w400(color: context.colors.green3),
                      ),
                    ],
                  ),
                ],
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 11),
                height: 38,
                width: 2.4,
                color: context.colors.background,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'تاريخ الاستحقاق',
                    style: AppTextStyle.s14_w400(color: context.colors.primaryText),
                  ),
                  Gaps.vGap8,
                  Text(
                    model.dueDate,
                    style: AppTextStyle.s14_w400(color: context.colors.green3),
                  ),
                ],
              ),
            ],
          ),
          RequiredCostButtonWidget(model: model),
        ],
      ),
    );
  }
}
