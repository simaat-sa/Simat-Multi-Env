import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_pro_barcode_scanner/flutter_pro_barcode_scanner.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/CustomButtonAnimation.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/app_snack_bar_service.dart';
import 'package:flutter_tdd/core/helpers/biometric_helper.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/helpers/user_helper_service.dart';
import 'package:flutter_tdd/core/http/models/result.dart';
import 'package:flutter_tdd/core/localization/translate.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/auth/data/models/user_model/user_model.dart';
import 'package:flutter_tdd/features/auth/domain/entity/login_params.dart';
import 'package:flutter_tdd/features/auth/domain/repositories/auth_repository.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/auth_app_bar_widget.dart';
import 'package:flutter_tdd/features/auth/presentation/widgets/auth_scaffold_widget.dart';

import 'widgets/login_widgets_imports.dart';

part 'login.dart';
part 'login_controller.dart';