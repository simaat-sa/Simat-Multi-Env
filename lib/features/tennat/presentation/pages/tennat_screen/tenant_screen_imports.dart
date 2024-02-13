import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/tennat/domain/requesters/tennat_requester.dart';
import 'package:flutter_tdd/features/tennat/presentation/widgets/custom_app_bar.dart';
import 'package:flutter_tdd/features/tennat/presentation/widgets/failure_item_widget.dart';
import 'package:flutter_tdd/features/base/presentation/widgets/filter_input_widget.dart';
import 'package:flutter_tdd/features/tennat/presentation/widgets/page_header_title_widget.dart';
import 'package:flutter_tdd/features/tennat/presentation/widgets/unit_loading_list_widget.dart';

import 'widgets/tenant_screen_widgets_imports.dart';


part 'tenant_screen_controller.dart';
part 'tenant_screen.dart';