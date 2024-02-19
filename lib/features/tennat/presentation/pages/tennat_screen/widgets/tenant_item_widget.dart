part of 'tenant_screen_widgets_imports.dart';

class TenantItemWidget extends StatelessWidget {
  final TenantModel model;
  const TenantItemWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => AutoRouter.of(context).push(TenantDetailsRoute(model: model)),
      child: Container(
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
                            "#${model.code}",
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
                        Translate.s.worthy,
                        style: AppTextStyle.s14_w400(color: context.colors.primary),
                      ),
                      Text(
                        model.price,
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
                      color: model.status.getColor(),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      model.status.getLocalizedName(),
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
                      SvgPicture.asset(
                        Res.unitLogo
                      ),
                      Gaps.hGap5,
                      Row(
                        children: [
                          Text(
                            model.unitName,
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
                            model.type.getLocalizedName(),
                            style: AppTextStyle.s16_w400(color: context.colors.brown),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Text(
                    ' ينتهي${model.date}',
                    style: AppTextStyle.s14_w400(color: context.colors.primaryText),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

}
