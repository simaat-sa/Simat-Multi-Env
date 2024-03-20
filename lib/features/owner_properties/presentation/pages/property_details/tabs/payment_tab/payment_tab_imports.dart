import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/empty_list_item_widget.dart';
import 'package:flutter_tdd/features/owner_properties/data/models/properties_expenses_model/properties_expenses_model.dart';
import 'package:flutter_tdd/features/owner_properties/domain/entity/properties_expenses_params.dart';
import 'package:flutter_tdd/features/owner_properties/domain/repositories/property_repository.dart';
import 'package:flutter_tdd/features/owner_properties/presentation/pages/property_details/tabs/payment_tab/widgets/payment_tab_widgets_imports.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'payment_tab.dart';
part 'payment_tab_controller.dart';