import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/extensions/date_format.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/core/theme/text/app_text_style.dart';
import 'package:flutter_tdd/core/widgets/base_form_option/base_options_requester.dart';
import 'package:flutter_tdd/features/auth/presentation/manager/user_cubit/user_cubit.dart';
import 'package:flutter_tdd/features/contracts/data/models/maintenance_services_model/maintenance_services_model.dart';
import 'package:flutter_tdd/features/contracts/domain/entity/add_maintenance_params.dart';
import 'package:flutter_tdd/features/contracts/domain/repositories/contract_repository.dart';
import 'package:flutter_tdd/features/contracts/presentation/widgets/sheet_app_bar.dart';
import 'package:flutter_tdd/features/tennat/data/models/props_model/prop_model.dart';
import 'package:flutter_tdd/features/tennat/domain/repositories/tennat_repository.dart';
import 'package:flutter_tdd/res.dart';

import 'widgets/add_contract_widgets_imports.dart';

part 'add_contract.dart';
part 'add_contract_controller.dart';