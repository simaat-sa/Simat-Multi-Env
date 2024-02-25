import 'package:auto_route/auto_route.dart';
import 'package:flutter_tdd/core/routes/router_imports.gr.dart';

var authRoute = [
  AdaptiveRoute(page: SplashRoute.page, initial: true),
  AdaptiveRoute(page: Login.page),
  AdaptiveRoute(page: VerifyOTP.page),
  AdaptiveRoute(page: ActiveAccount.page),
  AdaptiveRoute(page: ResetPassword.page),
  AdaptiveRoute(page: ForgetPassword.page),
  AdaptiveRoute(page: GetCodeInfoRoute.page),
];
