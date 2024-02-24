import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/enums/contract_status.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/app_bottom_sheets.dart';
import 'package:flutter_tdd/core/widgets/empty_list_item_widget.dart';
import 'package:flutter_tdd/features/contract/presentation/widgets/custom_app_bar.dart';
import 'package:flutter_tdd/features/contract/presentation/widgets/page_header_title_widget.dart';
import 'package:flutter_tdd/features/maintenance/data/models/maintenance_model/maintenance_model.dart';
import 'package:flutter_tdd/features/maintenance/domain/requesters/maintenance_requester.dart';
import 'package:flutter_tdd/features/maintenance/presentation/widgets/contract_dialog_widget.dart';
import 'package:flutter_tdd/features/base/presentation/widgets/filter_input_widget.dart';


import '../../widgets/failure_item_widget.dart';
import '../../widgets/unit_loading_list_widget.dart';
import '../filter_maintenance/filter_maintenance_imports.dart';
import 'widgets/maintenance_widgets_imports.dart';



part 'maintenance_controller.dart';
part 'maintenance_screen.dart';