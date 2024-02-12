part of 'tenant_screen_widgets_imports.dart';

class TenantItemWidget extends StatelessWidget {
  final Tenant model;
  const TenantItemWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          CachedImage(
            alignment: Alignment.topCenter,
            url: model.unitImage,
            height: 200,
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
                            color: context.colors.black.withOpacity(0.15), borderRadius: BorderRadius.circular(5)),
                        child: Row(
                          children: [
                            Icon(
                              Icons.map_outlined,
                              color: context.colors.white,
                              size: 22,
                            ),
                            Text(
                              "${model.propRegion} . ${model.propCity}",
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
                            color: context.colors.black.withOpacity(0.15), borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          "#${model.myoCode}",
                          style: AppTextStyle.s14_w400(color: context.colors.white).copyWith(height: 2.2),
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
                      'مستحق ',
                      style: AppTextStyle.s14_w400(color: context.colors.primary),
                    ),
                    Text(
                      model.amtTot,
                      style: AppTextStyle.s20_w600(color: context.colors.primary),
                    ),
                    Text(
                      ' ر.س',
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
                    model.deedName,
                    style: AppTextStyle.s12_w400(color: context.colors.white),
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
                    SvgPicture.asset(
                      Res.unitLogo
                    ),
                    Text(
                      ' مكتب | . تجاري',
                      style: AppTextStyle.s16_w400(color: context.colors.brown),
                    ),
                  ],
                ),
                Text(
                  ' ينتهي${model.deedIssue}',
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
