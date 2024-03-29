import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/theme/themes/app_theme.dart';
import 'package:flutter_tdd/core/widgets/failure_view_widget.dart';
import 'package:flutter_tdd/features/contract/data/models/props_model/prop_model.dart';
import 'package:flutter_tdd/features/contract/presentation/pages/contract_details/widgets/tenant_details_widgets_imports.dart';
import 'package:flutter_tdd/features/maintenance/presentation/pages/add_maintenance/add_maintenance_imports.dart';
import 'package:flutter_tdd/features/owner_properties/data/models/prop_details_model.dart';
import 'package:flutter_tdd/features/owner_properties/domain/models/property_count.dart';
import 'package:flutter_tdd/features/owner_properties/presentation/pages/property_details/property_details_imports.dart';
import 'package:flutter_tdd/features/owner_properties/presentation/widgets/cost_item_widget.dart';
import 'package:flutter_tdd/features/owner_properties/presentation/widgets/prop_details_loading_widget.dart';
import 'package:flutter_tdd/res.dart';

part 'property_summary_header_widget.dart';
part 'property_summary_works_item_widget.dart';
part 'property_summary_works_list_items_widget.dart';
part 'property_summary_cost_item_widget.dart';
part 'property_summary_view.dart';
part 'cost_items_list_widget.dart';
part 'property_summary_add_request_widget.dart';
part 'property_tab_bar_widget.dart';