import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/contracts/data/models/tennat_model/contract_model.dart';
import 'package:flutter_tdd/res.dart';

class ContractDialog extends StatelessWidget {
  final ContractModel model;

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
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'طلب صيانة',
                      style: AppTextStyle.s28_w700(color: context.colors.darkTextColor),
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
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Text(
                              model.code,
                              style: AppTextStyle.s16_w400(color: context.colors.darkTextColor),
                            ),
                            Text(
                              ' . ',
                              style: AppTextStyle.s16_w400(color: context.colors.primaryText),
                            ),
                            Text(
                              model.unitName,
                              style: AppTextStyle.s16_w400(color: context.colors.darkTextColor),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            SvgPicture.asset(Res.calendarIcon),
                            Gaps.hGap5,
                            Text(
                              model.createdDate,
                              style: AppTextStyle.s16_w400(color: context.colors.textColor).copyWith(
                                height: 2,
                              ),
                            ),
                            if (model.createdBy.isNotEmpty)
                              Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 4),
                                child: Text(
                                  ".",
                                  style: AppTextStyle.s14_w500(color: context.colors.primary),
                                ),
                              ),
                            Text(
                              model.createdBy,
                              style: AppTextStyle.s14_w400(color: context.colors.textColor),
                            ),
                          ],
                        ),
                      ],
                    ),
                    const Spacer(),
                    Text(
                      model.price,
                      style: AppTextStyle.s16_w500(color: context.colors.green3),
                    ),
                    Text(
                      "ر.س",
                      style: AppTextStyle.s16_w400(color: context.colors.green3),
                    ),
                  ],
                ),
                Divider(
                  color: context.colors.backgroundLight,
                ),
                Row(
                  children: [
                    Text(
                      "الوصف",
                      style: AppTextStyle.s14_w400(color: context.colors.textColor),
                    ),
                    const Spacer(),
                    Container(
                      decoration: BoxDecoration(
                        color: context.colors.primary,
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
                Gaps.vGap12,
                Text(
                  model.desc,
                  style: AppTextStyle.s13_w400(color: context.colors.darkTextColor).copyWith(overflow: TextOverflow.clip),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
