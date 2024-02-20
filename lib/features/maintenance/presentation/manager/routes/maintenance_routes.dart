import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';

var maintenanceRoutes =[
  AutoRoute(page: FilterMaintenanceRoute.page),
  AutoRoute(page: AddMaintenanceRoute.page),
  AutoRoute(page: CompleteAddMaintenanceRoute.page),
];