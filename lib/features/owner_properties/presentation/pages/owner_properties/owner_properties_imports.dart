import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/widgets/empty_list_item_widget.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/app_bottom_sheets.dart';
import 'package:flutter_tdd/features/base/presentation/widgets/filter_input_widget.dart';
import 'package:flutter_tdd/features/contract/data/models/props_model/prop_model.dart';
import 'package:flutter_tdd/features/contract/presentation/widgets/custom_app_bar.dart';
import 'package:flutter_tdd/features/owner_properties/domain/entity/owner_properties_params.dart';
import 'package:flutter_tdd/features/owner_properties/domain/repositories/property_repository.dart';
import 'package:flutter_tdd/features/owner_properties/presentation/pages/filter_property/filter_property_imports.dart';
import 'package:flutter_tdd/features/owner_properties/presentation/pages/owner_properties/widgets/property_widgets_imports.dart';
import 'package:flutter_tdd/features/owner_properties/presentation/widgets/property_loading_list_widget.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

part 'owner_properties_controller.dart';
part 'owner_properties.dart';