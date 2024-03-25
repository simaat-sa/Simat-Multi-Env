part of'units_widgets_imports.dart';


class UnitItemWidget extends StatelessWidget {
  final ContractModel model;

  const UnitItemWidget({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 10),
      decoration: BoxDecoration(
        color: context.colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.2),
            spreadRadius: 2,
            blurRadius: 5,
            offset: const Offset(0, 3),
          ),
        ],
      ),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsetsDirectional.only(start: 10, end: 10, top: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      model.unitName,
                      style: AppTextStyle.s16_w400(color: context.colors.darkTextColor),
                    ),
                    Gaps.vGap5,
                    Text(
                      "${model.blockName} . ${model.type.getLocalizedName()}",
                      style: AppTextStyle.s16_w400(color: context.colors.darkTextColor),
                    ),
                  ],
                ),
                if (model.propDetailsStatus.getLocalizedName() != "")
                  Container(
                    height: 22,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                      color: model.propDetailsStatus.getBgColor(),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: Text(
                      model.propDetailsStatus.getLocalizedName(),
                      style: AppTextStyle.s14_w400(
                        color: model.propDetailsStatus.getTextColor()
                      ),
                    ),
                  ),
              ],
            ),
          ),
          Gaps.vGap15,
          // CostItemWidget(
          //   title: Translate.s.balance,
          //   value: model.amtBalance,
          //   color: context.colors.bgLight,
          // ),
          CostItemWidget(
            title: Translate.s.required,
            value: model.amtPayablePrice,
          ),
          CostItemWidget(
              title: Translate.of(context).beginning_of_the_contract,
              value: model.startDate,
              color: context.colors.bgLight,
              image: Res.calendarIcon,
              costOrNot: false),
          CostItemWidget(
            title: Translate.s.end_of_the_contract,
            value: model.date,
            image: Res.calendarIcon,
            costOrNot: false,
          ),
          CostItemWidget(
            title: Translate.s.tenant,
            value: model.contactName,
            image: Res.tenantLogo,
            color: context.colors.bgLight,
            costOrNot: false,
          ),
        ],
      ),
    );
  }
}
