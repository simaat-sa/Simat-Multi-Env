import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/details_item_widget.dart';
import 'package:flutter_tdd/features/maintenance/data/models/maintenance_model/maintenance_model.dart';
import 'package:flutter_tdd/res.dart';

class ContractDialog extends StatelessWidget {
  final MaintenanceModel model;

  const ContractDialog({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 35),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: context.colors.white,
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      Translate.s.maintenance_request,
                      style: AppTextStyle.s28_w400(color: context.colors.darkTextColor),
                    ),
                    InkWell(
                        onTap: () => Navigator.of(context).pop(),
                        child: Icon(
                          Icons.close,
                          color: context.colors.darkTextColor,
                        )),
                  ],
                ),
                Gaps.vGap13,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      model.code,
                      style: AppTextStyle.s16_w400(color: context.colors.darkTextColor),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        color: model.statusColor,
                        borderRadius: BorderRadius.circular(5),
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                      child: Text(
                        model.statusName,
                        style: AppTextStyle.s14_w400(color: context.colors.white),
                      ),
                    ),
                  ],
                ),
                Divider(
                  height: 30,
                  color: context.colors.backgroundLight,
                ),
                DetailsItemWidget(
                    title: Translate.s.real_estate_unit,
                    value: model.unitName,
                    color: context.colors.bgLight,
                    image: Res.unitLogo),
                DetailsItemWidget(
                    title: Translate.s.main_property,
                    value: model.createdDateTimeStamp,
                    image: Res.unitLogo),
                DetailsItemWidget(
                    title: Translate.s.date_of_request,
                    value: model.createdDate,
                    color: context.colors.bgLight,
                    image: Res.calendarIcon),
                DetailsItemWidget(
                    title: Translate.s.applicant, value: model.createdBy, image: Res.userLogo),
                Divider(
                  height: 10,
                  color: context.colors.backgroundLight,
                ),
                _buildPriceItem(context,
                    title: Translate.s.estimated_cost, value: model.approxCost),
                _buildPriceItem(context,
                    title: Translate.s.final_cost,
                    value: model.actualCost,
                    color: context.colors.bgLight),
                Divider(
                  height: 30,
                  color: context.colors.backgroundLight,
                ),
                Text(
                  Translate.s.description_of_maintenance,
                  style: AppTextStyle.s14_w500(color: context.colors.primaryText),
                ),
                Gaps.vGap12,
                Text(
                  model.desc,
                  style: AppTextStyle.s13_w400(color: context.colors.darkTextColor)
                      .copyWith(overflow: TextOverflow.clip),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }

  Container _buildPriceItem(
    BuildContext context, {
    Color? color,
    required String title,
    required String value,
  }) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 7, horizontal: 7),
      color: color ?? context.colors.white,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SvgPicture.asset(Res.coinLogo),
          Gaps.hGap5,
          Text(
            title,
            style: AppTextStyle.s14_w400(color: context.colors.darkTextColor),
          ),
          const Spacer(),
          Text(
            value,
            style: AppTextStyle.s18_w500(color: context.colors.green3),
          ),
          Text(
            " ر.س",
            style: AppTextStyle.s14_w400(color: context.colors.green3),
          ),
        ],
      ),
    );
  }
}
