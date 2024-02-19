import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';

var tenantRoutes =[
  AutoRoute(page: FilterTenantRoute.page),
  AutoRoute(page: TenantDetailsRoute.page),
  AutoRoute(page: RenewContractStatusRoute.page),
];