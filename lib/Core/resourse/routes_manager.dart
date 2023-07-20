import 'package:flutter/material.dart';
import 'package:flutter_task/Core/resourse/strings_manager.dart';
import 'package:flutter_task/Features/help/presentation/help.dart';

import '../../Features/auth/presentation/views/register.dart';
import '../../Features/auth/presentation/views/virefy_phone.dart';
import '../../Features/splash/presentation/splash.dart';

class Routes {
  static const String splashRoute = "/";

  static const String registerRoute = "/register";

  static const String verifyPhoneRoute = "/verifyPhone";

  static const String helpRoute = "/help";

  static const String layoutRoute = "/layout";

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
      case Routes.layoutRoute:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
      case Routes.productDetailsRoute:
        return MaterialPageRoute(builder: (_) => const RegisterScreen());
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
