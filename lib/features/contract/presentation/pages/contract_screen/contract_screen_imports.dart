import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/enums/contract_types.dart';
import 'package:flutter_tdd/core/enums/tenant_visibility.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/app_bottom_sheets.dart';
import 'package:flutter_tdd/core/widgets/empty_list_item_widget.dart';
import 'package:flutter_tdd/features/base/presentation/widgets/filter_input_widget.dart';
import 'package:flutter_tdd/features/contract/domain/requesters/contract_requester.dart';
import 'package:flutter_tdd/features/contract/presentation/pages/filter_contract/filter_contract_imports.dart';
import 'package:flutter_tdd/features/contract/presentation/widgets/custom_app_bar.dart';
import 'package:flutter_tdd/features/contract/presentation/widgets/page_header_title_widget.dart';

import '../../widgets/failure_item_widget.dart';
import '../../widgets/unit_loading_list_widget.dart';
import 'widgets/contract_screen_widgets_imports.dart';


part 'contract_screen_controller.dart';
part 'cnotract_screen.dart';