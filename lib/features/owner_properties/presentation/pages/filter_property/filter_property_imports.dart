import 'package:auto_route/annotations.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/app_bottom_sheets.dart';
import 'package:flutter_tdd/core/widgets/filter_app_bar.dart';
import 'package:flutter_tdd/core/widgets/filter_buttons_widget.dart';
import 'package:flutter_tdd/features/owner_properties/domain/requesters/filter_property_request.dart';
import 'package:flutter_tdd/features/owner_properties/data/models/filter_property_model/filter_property_model.dart';
import 'package:flutter_tdd/features/owner_properties/presentation/pages/owner_properties/owner_properties_imports.dart';


import 'widget/filter_property_widgets_imports.dart';

part 'filter_property.dart';
part 'filter_property_controller.dart';