import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/device_cubit/device_cubit.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/services/language_service.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/auth_drawer_item_widget.dart';
import 'package:flutter_tdd/res.dart';

class LanguagesWidget extends StatefulWidget {
  const LanguagesWidget({super.key});

  @override
  State<LanguagesWidget> createState() => _LanguagesWidgetState();
}

class _LanguagesWidgetState extends State<LanguagesWidget> {
  final ObsValue<bool> langObs = ObsValue.withInit(false);

  @override
  Widget build(BuildContext context) {
    var currentLang = context.watch<DeviceCubit>().state.model.locale.languageCode;
    return ObsValueConsumer(
        observable: langObs,
        builder: (context, state) {
          return Column(
            children: [
              AuthDrawerItemWidget(
                padding: EdgeInsetsDirectional.only(bottom: state ? 20 : 30),
                icon: state ? Icons.keyboard_arrow_down : Icons.arrow_forward_ios_outlined,
                size: state ? 25 : 15,
                text: Translate.of(context).label_app_language,
                onTap: () => langObs.setValue(!state),
              ),
              Visibility(
                visible: state,
                child: Column(
                  children: [
                    Container(
                      alignment: AlignmentDirectional.centerStart,
                      padding: const EdgeInsetsDirectional.only(start: 20, end: 20, bottom: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: List.generate(Languages.values.length, (index) {
                          bool isSelected = currentLang == Languages.values[index].code;
                          return InkWell(
                            onTap: () {
                              LanguageService.instance
                                  .changeLanguageWithRestart(Languages.values[index]);
                            },
                            child: Padding(
                              padding: EdgeInsets.only(bottom: index == 0 ? 15 : 0),
                              child: Row(
                                children: [
                                  Expanded(
                                    child: Text(
                                      Languages.values[index].name,
                                      style: AppTextStyle.s18_w400(
                                        color: isSelected
                                            ? context.colors.primary
                                            : context.colors.primaryText,
                                      ),
                                    ),
                                  ),
                                  Visibility(
                                    visible: isSelected,
                                    child: SvgPicture.asset(
                                      Res.checkmark,
                                      color: context.colors.primary,
                                      width: 20,
                                      height: 20,
                                    )
                                  ),
                                ],
                              ),
                            ),
                          );
                        }),
                      ),
                    ),
                    Divider(
                      color: context.colors.greyWhite,
                      thickness: 1.5,
                      height: 10,
                    ),
                    Gaps.vGap15,
                  ],
                ),
              ),
            ],
          );
        });
  }
}
