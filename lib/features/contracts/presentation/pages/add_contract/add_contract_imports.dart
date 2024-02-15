import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_tdd/core/bloc/value_state_manager/value_state_manager_import.dart';
import 'package:flutter_tdd/core/constants/gaps.dart';
import 'package:flutter_tdd/core/helpers/di.dart';
import 'package:flutter_tdd/core/theme/colors/colors_extension.dart';
import 'package:flutter_tdd/features/contracts/data/models/maintenance_services_model/maintenance_services_model.dart';
import 'package:flutter_tdd/features/contracts/domain/entity/add_maintenance_params.dart';
import 'package:flutter_tdd/features/contracts/domain/repositories/contract_repository.dart';
import 'package:flutter_tdd/features/tennat/data/models/props_model/props_model.dart';
import 'package:flutter_tdd/features/tennat/domain/requesters/pops_requester.dart';

import 'widgets/add_contract_widgets_imports.dart';

part 'add_contract.dart';
part 'add_contract_controller.dart';