import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/extensions/common_extension.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/theme/colors/app_colors.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/app_button.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/controller/option_controller.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/bottom_sheet_button_widget.dart';
import 'package:flutter_tdd/core/widgets/search_form_field/search_form_field.dart';
class OptionSheetContent<T> extends StatefulWidget {
  final String? bottomSheetTitle;
  final bool showSearch;
  final void Function(String v)? onSearch;
  final VoidCallback onSaveTextPressed;
  final String? customSaveText;
  final OptionController<T> controller;
  final WidgetBuilder contentBuilder;
  final double? height;
  final EdgeInsets? contentPadding;
  final VoidCallback? onCancelPressed;
  final bool? addNewOptionEnabled;
  final String? addNewOptionButtonText;
  final VoidCallback? onAddNewOptionPressed;

  /// When this param is true the buttons will be hidden
  final bool isViewMode;

  const OptionSheetContent(
      {super.key,
      required this.bottomSheetTitle,
      required this.showSearch,
      this.onSearch,
      required this.onSaveTextPressed,
      this.customSaveText,
      required this.controller,
      required this.contentBuilder,
      required this.height,
      this.contentPadding,
      this.onCancelPressed,
      this.addNewOptionEnabled,
      this.addNewOptionButtonText,
      this.onAddNewOptionPressed,
      this.isViewMode = false});

  @override
  State<OptionSheetContent<T>> createState() => _OptionSheetContentState<T>();
}

class _OptionSheetContentState<T> extends State<OptionSheetContent<T>> {
  final ObsValue<bool> _titleObs = ObsValue<bool>.withInit(false);
  bool _isSaveAction = false;

  @override
  Widget build(BuildContext context) {
    return PopScope(
      onPopInvoked: (_)async {
        await _onWillPop(context);
      },
      child: Padding(
        padding: MediaQuery.of(context).viewInsets,
        child: GestureDetector(
          onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
          child: SizedBox(
            height: widget.height ?? MediaQuery.of(context).size.height * .6,
            child: ClipRRect(
                borderRadius: const BorderRadius.vertical(top: Radius.circular(30)),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    if (!widget.bottomSheetTitle.isNullEmptyOrWhitespace || widget.showSearch)
                      Padding(
                        padding: const EdgeInsets.fromLTRB(24, 24, 24, 8),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            if (!widget.bottomSheetTitle.isNullEmptyOrWhitespace)
                              ObsValueConsumer<bool>(
                                observable: _titleObs,
                                builder: (context, data) {
                                  if (data) {
                                    return Gaps.empty;
                                  }
                                  return Flexible(
                                    flex: 2,
                                    child: Text(
                                      widget.bottomSheetTitle!,
                                      style: AppTextStyle.s20_w500(
                                        color: AppColors.of(context).darkTextColor,
                                      ),
                                    ),
                                  );
                                },
                              ),
                            if (widget.showSearch && !widget.isViewMode)
                              Flexible(
                                child: SearchFormField(
                                  onChange: widget.onSearch,
                                  onSubmit: widget.onSearch,
                                  onFocus: (val) => _titleObs.setValue(val),
                                ),
                              ),
                          ],
                        ),
                      ),
                    Expanded(
                      child: IgnorePointer(
                        /// Prevents interacting if view mode is true
                        ignoring: widget.isViewMode,
                        child: Container(
                          alignment: Alignment.topCenter,
                          margin: widget.contentPadding ??
                              const EdgeInsets.symmetric(vertical: 20, horizontal: 24),
                          child: BlocBuilder(
                              bloc: widget.controller,
                              builder: (context, __) {
                                return widget.contentBuilder(context);
                              }),
                        ),
                      ),
                    ),

                    /// Buttons
                    _sheetButtons(),
                    const SizedBox(height: 16)
                  ],
                )),
          ),
        ),
      ),
    );
  }

  Widget _sheetButtons() {
    if (widget.isViewMode) {
      /// Done button
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 4, horizontal: 12),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            AppTextButton.minPrimary(
              text: Translate.s.done,
              onPressed: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      );
    } else {
      return Column(
        children: [
          /// Add new option button
          if (widget.addNewOptionEnabled ?? false)
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 0),
              child: AppTextButton.maxWhite(
                onPressed: () {
                  widget.onAddNewOptionPressed?.call();
                },
                text: "+ ${widget.addNewOptionButtonText ?? Translate.s.add_new_item}",
              ),
            ),

          /// Save and cancel buttons
          BottomSheetButtonWidget(
            onSaveTextPressed: () {
              _isSaveAction = true;
              widget.onSaveTextPressed();
            },
            onCancelPressed: widget.onCancelPressed,
            customSaveText: widget.customSaveText,
          )
        ],
      );
    }
  }

  Future<bool> _onWillPop(BuildContext context) async {
    if (_isSaveAction) {
      return true;
    }
    return false;
  }
}
