import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/enums/prop_details_status.dart';
import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/app_bottom_sheets.dart';
import 'package:flutter_tdd/core/widgets/empty_list_item_widget.dart';
import 'package:flutter_tdd/core/widgets/failure_view_widget.dart';
import 'package:flutter_tdd/features/contract/data/models/props_model/prop_model.dart';
import 'package:flutter_tdd/features/owner_properties/domain/entity/property_details_params.dart';
import 'package:flutter_tdd/features/owner_properties/domain/requesters/prop_units_requester.dart';

import '../../../../../../maintenance/presentation/widgets/unit_loading_list_widget.dart';
import 'widgets/units_widgets_imports.dart';

part 'units.dart';
part 'units_controller.dart';