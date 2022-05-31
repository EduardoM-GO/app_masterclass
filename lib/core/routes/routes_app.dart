import 'package:app_masterclass/modules/exercicios/pages/design_patterns/page/validador_cpf_page.dart';
import 'package:app_masterclass/modules/exercicios/presentation/execicios_page.dart';
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
      case '/exercicios':
        return _route(
          settings: settings,
          view: ExeciciosPage(
            topico: (settings.arguments as ExeciciosPage).topico,
            exercicios: (settings.arguments as ExeciciosPage).exercicios,
          ),
        );
      case '/design_patterns/exercicios':
        return _route(settings: settings, view: const ValidadorCpfPage());
      default:
        return _route(settings: settings, view: const SplashPage());
    }
  }
}
