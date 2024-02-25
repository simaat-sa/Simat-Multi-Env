part of 'router_imports.dart';

@AutoRouterConfig()
class AppRouter extends $AppRouter {
  @override
  final List<AutoRoute> routes = [
    AdaptiveRoute(page: TermsRoute.page),
    AutoRoute(page: Home.page),
    ...baseRoute,
    ...authRoute,
    ...contractRoutes,
    ...maintenanceRoutes,
    ...noticesRoutes,
  ];
}
