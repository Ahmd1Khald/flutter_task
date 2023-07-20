import 'package:flutter/material.dart';
import 'package:flutter_task/Core/resourse/strings_manager.dart';
import 'package:flutter_task/Features/help/presentation/veiws/help.dart';
import 'package:flutter_task/Features/layout/presentation/views/home.dart';

import '../../Features/auth/presentation/views/register.dart';
import '../../Features/auth/presentation/views/virefy_phone.dart';
import '../../Features/layout/presentation/views/product_details_screen.dart';
import '../../Features/splash/presentation/splash.dart';

class Routes {
  static const String splashRoute = "/";

  static const String registerRoute = "/register";

  static const String verifyPhoneRoute = "/verifyPhone";

  static const String helpRoute = "/help";

  static const String homeRoute = "/home";

  static const String productDetailsRoute = "/productDetails";

  static Route<dynamic> getRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splashRoute:
        return MaterialPageRoute(builder: (_) => const SplashScreen());
      case Routes.registerRoute:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case Routes.verifyPhoneRoute:
        return MaterialPageRoute(builder: (_) => const VerifyPhone());
      case Routes.helpRoute:
        return MaterialPageRoute(builder: (_) => const HelpScreen());
      case Routes.homeRoute:
        return MaterialPageRoute(builder: (_) => const HomeScreen());
      case Routes.productDetailsRoute:
        return MaterialPageRoute(builder: (_) => const ProductDetailsScreen());
      default:
        return unDefinedRoute();
    }
  }

  static Route<dynamic> unDefinedRoute() {
    return MaterialPageRoute(
        builder: (_) => Scaffold(
              appBar: AppBar(
                title: const Text(AppStrings.noRoute),
              ),
              body: const Center(child: Text(AppStrings.noRoute)),
            ));
  }
}
