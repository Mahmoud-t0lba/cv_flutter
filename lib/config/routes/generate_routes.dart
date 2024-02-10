import 'package:flutter/material.dart';
import 'package:flutter_cv/config/routes/app_routes.dart';
import 'package:flutter_cv/view/home/home_screen.dart';

class GenerateRoutes {
  Route<dynamic>? generate(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.home:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const HomeScreen());
      default:
        return PageRouteBuilder(
            pageBuilder: (_, __, ___) => const HomeScreen());
    }
  }
}
