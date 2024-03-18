import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/core/widgets/failure_view_widget.dart';
import 'package:flutter_tdd/features/contract/data/models/props_model/prop_model.dart';
import 'package:flutter_tdd/features/contract/presentation/pages/contract_details/widgets/tenant_details_widgets_imports.dart';
import 'package:flutter_tdd/features/owner_properties/domain/entity/property_details_params.dart';
import 'package:flutter_tdd/features/owner_properties/domain/requesters/prop_details_requester.dart';
import 'package:flutter_tdd/features/owner_properties/presentation/pages/property_details/property_details_imports.dart';
import 'package:flutter_tdd/features/owner_properties/presentation/widgets/prop_details_loading_widget.dart';

import 'property_details_imports.dart';
import 'property_details_imports.dart';
import 'tabs/maintenance_tab/maintenance_tab_imports.dart';
import 'tabs/payment_tab/widgets/payment_tab_widgets_imports.dart';
import 'tabs/units/units_imports.dart';
import 'widgets/property_details_widgets_imports.dart';

part 'property_details_controller.dart';
part 'property_details.dart';