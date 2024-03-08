import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/widgets/bottom_sheet_views/app_bottom_sheets.dart';
import 'package:flutter_tdd/core/widgets/failure_view_widget.dart';
import 'package:flutter_tdd/features/base/presentation/widgets/filter_input_widget.dart';
import 'package:flutter_tdd/features/contract/presentation/widgets/custom_app_bar.dart';
import 'package:flutter_tdd/features/owner_properties/domain/requseters/prperty_requester.dart';
import 'package:flutter_tdd/features/owner_properties/presentation/pages/filter_property/filter_property_imports.dart';
import 'package:flutter_tdd/features/owner_properties/presentation/pages/owner_properties/widgets/property_widgets_imports.dart';
import 'package:flutter_tdd/features/owner_properties/presentation/widgets/property_loading_list_widget.dart';

part 'owner_properties_controller.dart';
part 'owner_properties.dart';