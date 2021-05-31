import 'package:flutter/material.dart';
import 'package:house_of_pets/feature/bottom_bar/presentation/screen/bottom_bar.dart';

import 'package:house_of_pets/feature/splash/presentation/screen/splash_screen.dart';

import 'resources/routes.dart';

class Routers {
  static Route<dynamic> generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case splashRoute:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => SplashScreen(),
            transitionsBuilder: (_, a, __, c) =>
                FadeTransition(opacity: a, child: c));

      case bottomNavbar:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => BottomNavbarScreen(),
            transitionsBuilder: (_, a, __, c) =>
                FadeTransition(opacity: a, child: c));

      default:
        return MaterialPageRoute(
            builder: (_) => Scaffold(
                  body: Center(
                      child: Text('No route defined for ${settings.name}')),
                ));
    }
  }
}
