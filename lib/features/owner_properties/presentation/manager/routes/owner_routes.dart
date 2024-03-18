import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';

var ownerRoutes = [
  AutoRoute(page: FilterPropertyRoute.page),
  AutoRoute(page: PropertyDetailsRoute.page),
  AutoRoute(page: PaymentFilterRoute.page),
];