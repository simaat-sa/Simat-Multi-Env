import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc.dart';
import 'package:flutter_tdd/core/bloc/base_bloc/base_bloc_builder.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/app_loader_widget.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/global_context.dart';
import 'package:flutter_tdd/core/helpers/loading_helper.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/auth/data/models/user_access_model/user_access_model.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/base/presentation/pages/home/widgets/home_widgets_imports.dart';
import 'package:flutter_tdd/features/notification/domain/requesters/notices_count_requester.dart';
import 'package:flutter_tdd/features/slide_menu/presentation/pages/menu/menu_tap_imports.dart';

import '../../../../notification/domain/requesters/notices_requester.dart';

part 'home.dart';
part 'home_controller.dart';
