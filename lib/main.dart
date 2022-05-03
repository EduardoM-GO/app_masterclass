import 'package:app_masterclass/core/routes/routes_app.dart';
import 'package:app_masterclass/core/themes/theme_custom.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MainWidget());
}

class MainWidget extends StatefulWidget {
  const MainWidget({Key? key}) : super(key: key);

  @override
  State<MainWidget> createState() => _MainWidgetState();

  static _MainWidgetState? of(BuildContext context) =>
      context.findAncestorStateOfType<_MainWidgetState>();
}

class _MainWidgetState extends State<MainWidget> {
  ThemeMode _themeMode = ThemeMode.system;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      onGenerateRoute: RoutesApp.onGenerateRoute,
      themeMode: _themeMode,
      theme: ThemeCustom.lightTheme,
      darkTheme: ThemeCustom.darkTheme,
    );
  }

  void changeTheme() {
    setState(() {
      _themeMode =
          _themeMode == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    });
  }
}
