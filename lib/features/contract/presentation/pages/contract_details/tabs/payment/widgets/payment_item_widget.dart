part of 'payment_widgets_imports.dart';

class PaymentItemWidget extends StatelessWidget {
  final PaymentModel model;
  final void Function() onTap;

  const PaymentItemWidget({super.key, required this.model, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
                  model.tmtAr,
                  style: AppTextStyle.s14_w500(color: context.colors.secondaryText),
                ),
                Text(
                  '${Translate.of(context).due_date}${model.dtUpdated}',
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
                      Translate.of(context).worthy,
                      style: AppTextStyle.s14_w400(color: context.colors.primaryText),
                    ),
                    Gaps.vGap8,
                    Row(
                      children: [
                        Text(
                          model.duePrice,
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
                        Text(
                          model.amtCollect,
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
                SvgPicture.asset(model.selected ?? false ? Res.selectLogo : Res.unselectLogo,
                    height: 21, width: 21),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
