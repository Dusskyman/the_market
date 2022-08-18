import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:the_market/config/app_routes.dart';
import 'package:the_market/pages/auth_pages/login_page/login_page.dart';
import 'package:the_market/pages/auth_pages/register_page/register_page.dart';
import 'package:the_market/pages/market_page/market_page.dart';
import 'package:the_market/pages/market_page/subpages/product_details_page/product_details_page.dart';
import 'package:the_market/pages/splash_screen/splash_screen.dart';
import 'package:the_market/pages/user_details_page/user_details_page.dart';

part 'app_router.gr.dart';

@MaterialAutoRouter(
  routes: <AutoRoute>[
    AutoRoute(
      page: SplashScreen,
      initial: true,
    ),
    AutoRoute(
      page: LoginPage,
      path: AppRoutes.routeLogin,
    ),
    AutoRoute(
      page: RegisterPage,
      path: AppRoutes.routeRegister,
    ),
    AutoRoute(
      page: MarketPage,
      path: AppRoutes.routeMarket,
    ),
    AutoRoute(
      page: ProductDetailsPage,
      path: AppRoutes.routeProductDetails,
    ),
    AutoRoute(
      page: UserDetailsPage,
      path: AppRoutes.routeUserDetails,
    ),
  ],
)
class AppRouter extends _$AppRouter {}

class RouteService {
  RouteService._();

  static final AppRouter _routeService = AppRouter();

  static AppRouter get instance => _routeService;
}
