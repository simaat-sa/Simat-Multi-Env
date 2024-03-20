import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/enums/contract_status.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/app_bottom_sheets.dart';
import 'package:flutter_tdd/core/widgets/empty_list_item_widget.dart';
import 'package:flutter_tdd/features/contract/data/models/props_model/prop_model.dart';
import 'package:flutter_tdd/features/contract/presentation/widgets/unit_loading_list_widget.dart';
import 'package:flutter_tdd/features/maintenance/data/models/maintenance_model/maintenance_model.dart';
import 'package:flutter_tdd/features/maintenance/domain/entity/maintenance_params.dart';
import 'package:flutter_tdd/features/maintenance/domain/repositories/maintenance_repository.dart';
import 'package:flutter_tdd/features/maintenance/presentation/widgets/maintenance_dialog_widget.dart';
import 'package:infinite_scroll_pagination/infinite_scroll_pagination.dart';

import 'widgets/maintenance_tab_widgets_imports.dart';

part 'maintenance_tab.dart';
part 'maintenance_tab_controller.dart';