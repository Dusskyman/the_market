// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

part of 'app_router.dart';

class _$AppRouter extends RootStackRouter {
  _$AppRouter([GlobalKey<NavigatorState>? navigatorKey]) : super(navigatorKey);

  @override
  final Map<String, PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const SplashScreen());
    },
    LoginPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const LoginPage());
    },
    RegisterPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const RegisterPage());
    },
    MarketPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const MarketPage());
    },
    ProductDetailsPageRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailsPageRouteArgs>();
      return MaterialPageX<dynamic>(
          routeData: routeData,
          child: ProductDetailsPage(
              id: args.id,
              title: args.title,
              img: args.img,
              text: args.text,
              key: args.key));
    },
    UserDetailsPageRoute.name: (routeData) {
      return MaterialPageX<dynamic>(
          routeData: routeData, child: const UserDetailsPage());
    }
  };

  @override
  List<RouteConfig> get routes => [
        RouteConfig(SplashScreenRoute.name, path: '/'),
        RouteConfig(LoginPageRoute.name, path: 'routeLogin'),
        RouteConfig(RegisterPageRoute.name, path: 'routeRegister'),
        RouteConfig(MarketPageRoute.name, path: 'routeMarket'),
        RouteConfig(ProductDetailsPageRoute.name, path: 'routeProductDetails'),
        RouteConfig(UserDetailsPageRoute.name, path: 'routeUserDetails')
      ];
}

/// generated route for
/// [SplashScreen]
class SplashScreenRoute extends PageRouteInfo<void> {
  const SplashScreenRoute() : super(SplashScreenRoute.name, path: '/');

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [LoginPage]
class LoginPageRoute extends PageRouteInfo<void> {
  const LoginPageRoute() : super(LoginPageRoute.name, path: 'routeLogin');

  static const String name = 'LoginPageRoute';
}

/// generated route for
/// [RegisterPage]
class RegisterPageRoute extends PageRouteInfo<void> {
  const RegisterPageRoute()
      : super(RegisterPageRoute.name, path: 'routeRegister');

  static const String name = 'RegisterPageRoute';
}

/// generated route for
/// [MarketPage]
class MarketPageRoute extends PageRouteInfo<void> {
  const MarketPageRoute() : super(MarketPageRoute.name, path: 'routeMarket');

  static const String name = 'MarketPageRoute';
}

/// generated route for
/// [ProductDetailsPage]
class ProductDetailsPageRoute
    extends PageRouteInfo<ProductDetailsPageRouteArgs> {
  ProductDetailsPageRoute(
      {required int id,
      required String title,
      required String img,
      required String text,
      Key? key})
      : super(ProductDetailsPageRoute.name,
            path: 'routeProductDetails',
            args: ProductDetailsPageRouteArgs(
                id: id, title: title, img: img, text: text, key: key));

  static const String name = 'ProductDetailsPageRoute';
}

class ProductDetailsPageRouteArgs {
  const ProductDetailsPageRouteArgs(
      {required this.id,
      required this.title,
      required this.img,
      required this.text,
      this.key});

  final int id;

  final String title;

  final String img;

  final String text;

  final Key? key;

  @override
  String toString() {
    return 'ProductDetailsPageRouteArgs{id: $id, title: $title, img: $img, text: $text, key: $key}';
  }
}

/// generated route for
/// [UserDetailsPage]
class UserDetailsPageRoute extends PageRouteInfo<void> {
  const UserDetailsPageRoute()
      : super(UserDetailsPageRoute.name, path: 'routeUserDetails');

  static const String name = 'UserDetailsPageRoute';
}
