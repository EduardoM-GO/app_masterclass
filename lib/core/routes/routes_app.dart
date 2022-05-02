import 'package:app_masterclass/modules/home/presentation/home_page.dart';
import 'package:app_masterclass/modules/splash/presentation/splash_page.dart';
import 'package:flutter/material.dart';

class RoutesApp {
  static MaterialPageRoute _route(
          {required RouteSettings settings, required Widget view}) =>
      MaterialPageRoute(settings: settings, builder: (context) => view);

  static Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case '/home':
        return _route(settings: settings, view: const HomePage());
      default:
        return _route(settings: settings, view: const SplashPage());
    }
  }
}
