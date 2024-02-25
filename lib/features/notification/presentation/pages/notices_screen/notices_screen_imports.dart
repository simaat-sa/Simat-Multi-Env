import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/enums/notify_status.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/requester/consumer/requester_consumer.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/default_app_bar.dart';
import 'package:flutter_tdd/core/widgets/failure_view_widget.dart';
import 'package:flutter_tdd/features/notification/domain/entity/notification_params.dart';
import 'package:flutter_tdd/features/notification/domain/repositories/notices_repository.dart';
import 'package:flutter_tdd/features/notification/domain/requesters/notices_requester.dart';
import 'package:flutter_tdd/features/notification/presentation/widgets/notices_loading_list_widget.dart';

import 'widgets/notices_screen_widgets_imports.dart';

part 'notices_screen_controller.dart';
part 'notices_screen.dart';
