import 'package:auto_route/auto_route.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/enums/contract_types.dart';
import 'package:flutter_tdd/core/enums/tenant_visibility.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/app_bottom_sheets.dart';
import 'package:flutter_tdd/core/widgets/empty_list_item_widget.dart';
import 'package:flutter_tdd/features/tennat/data/models/tennat_model/tennat_model.dart';
import 'package:flutter_tdd/features/tennat/domain/requesters/tennat_requester.dart';
import 'package:flutter_tdd/features/tennat/presentation/pages/filter_tenant/filter_tenant_imports.dart';
import 'package:flutter_tdd/features/tennat/presentation/widgets/custom_app_bar.dart';
import 'package:flutter_tdd/features/tennat/presentation/widgets/failure_item_widget.dart';
import 'package:flutter_tdd/features/base/presentation/widgets/filter_input_widget.dart';
import 'package:flutter_tdd/features/tennat/presentation/widgets/page_header_title_widget.dart';
import 'package:flutter_tdd/features/tennat/presentation/widgets/unit_loading_list_widget.dart';

import 'widgets/tenant_screen_widgets_imports.dart';


part 'tenant_screen_controller.dart';
part 'tenant_screen.dart';