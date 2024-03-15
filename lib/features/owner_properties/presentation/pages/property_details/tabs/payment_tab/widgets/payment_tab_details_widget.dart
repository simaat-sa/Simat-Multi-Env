part of 'payment_tab_widgets_imports.dart';

class PaymentTabDetailsWidget extends StatelessWidget {
  const PaymentTabDetailsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 1),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 8),
      decoration: BoxDecoration(
        color: context.colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5,
            spreadRadius: 1,
            color: context.colors.greyWhite,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                "قسط أملاك",
                style: AppTextStyle.s14_w500(color: context.colors.secondaryText),
              ),
              Text(
                '${Translate.of(context).due_date} 2024-02-18',
                style: AppTextStyle.s14_w400(color: context.colors.primaryText),
              ),
            ],
          ),
          Gaps.vGap13,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                Res.paymentLogo,
                height: 32,
                width: 32,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Translate.of(context).due,
                    style: AppTextStyle.s14_w400(color: context.colors.primaryText),
                  ),
                  Gaps.vGap8,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Text(
                          "50,000",
                          style: AppTextStyle.s18_w500(color: context.colors.green3),
                        ),
                      ),
                      Text(
                        Translate.of(context).sar,
                        style: AppTextStyle.s14_w400(color: context.colors.green3),
                      ),
                    ],
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    Translate.of(context).collector,
                    style: AppTextStyle.s14_w400(color: context.colors.primaryText),
                  ),
                  Gaps.vGap8,
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 2),
                        child: Text(
                          "20,000",
                          style: AppTextStyle.s18_w500(color: context.colors.green3),
                        ),
                      ),
                      Text(
                        Translate.of(context).sar,
                        style: AppTextStyle.s14_w400(color: context.colors.green3),
                      ),
                    ],
                  ),
                ],
              ),
              SvgPicture.asset(Res.unselectLogo, height: 21, width: 21),
            ],
          ),
        ],
      ),
    );
  }
}
