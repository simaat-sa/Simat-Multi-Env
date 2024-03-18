part of'units_widgets_imports.dart';


class UnitItemWidget extends StatelessWidget {
  const UnitItemWidget({super.key,});

  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          CachedImage(
            alignment: Alignment.topCenter,
            url: "",
            height: 150,
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(10),
              topLeft: Radius.circular(10),
            ),
            child: Padding(
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: 26,
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            color: context.colors.black.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: [
                            SvgPicture.asset(Res.unitLocationLogo,color: context.colors.white),
                            Text(
                              "السليمانية . الرياض",
                              style: AppTextStyle.s14_w400(color: context.colors.white),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        alignment: Alignment.center,
                        height: 26,
                        padding: const EdgeInsets.symmetric(horizontal: 5),
                        decoration: BoxDecoration(
                            color: context.colors.black.withOpacity(0.15),
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "#1002",
                          style: AppTextStyle.s14_w400(color: context.colors.white)
                              .copyWith(height: 2.2),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Text(
                      Translate.of(context).due,
                      style: AppTextStyle.s14_w400(color: context.colors.primary),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 4),
                      child: Text(
                        "20.000",
                        style: AppTextStyle.s20_w600(color: context.colors.primary),
                      ),
                    ),
                    Text(
                      Translate.of(context).sar,
                      style: AppTextStyle.s14_w400(color: context.colors.primary),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
                  decoration: BoxDecoration(
                    color: context.colors.primary,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: Text(
                    "فعال",
                    style: AppTextStyle.s12_w500(color: context.colors.white),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 10, right: 10, bottom: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(Res.unitLogo),
                    Gaps.hGap5,
                    Row(
                      children: [
                        Text(
                          "مكتب 1",
                          style: AppTextStyle.s16_w400(color: context.colors.brown),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 4),
                          child: Text(
                            '.',
                            style: AppTextStyle.s16_w500(color: context.colors.primary),
                          ),
                        ),
                        Text(
                          "تجاري",
                          style: AppTextStyle.s16_w400(color: context.colors.brown),
                        ),
                      ],
                    ),
                  ],
                ),
                Text(
                  '${Translate.of(context).expireIn} 9-2-2025',
                  style: AppTextStyle.s14_w400(color: context.colors.primaryText),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
