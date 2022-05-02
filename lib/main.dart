import 'package:app_masterclass/core/routes/routes_app.dart';
import 'package:app_masterclass/core/themes/theme_custom.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      onGenerateRoute: RoutesApp.onGenerateRoute,
      themeMode: ThemeMode.dark,
      darkTheme: ThemeCustom.darkTheme,
    ),
  );
}
