import 'package:app_masterclass/core/routes/routes_app.dart';
import 'package:app_masterclass/core/themes/cubit/theme_cubit.dart';
import 'package:app_masterclass/core/themes/theme_custom.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import 'core/injector/get_it_injector.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
  GetItInjector();
  final ThemeCubit bloc = GetIt.I.get<ThemeCubit>();
  bloc.getTheme();
  runApp(
    BlocBuilder<ThemeCubit, ThemeState>(
      bloc: bloc,
      builder: (context, state) {
        late final ThemeMode mode;
        if (state is ThemeSuccessState) {
          mode = state.themeMode;
        } else {
          mode = ThemeMode.system;
        }
        return MaterialApp(
          onGenerateRoute: RoutesApp.onGenerateRoute,
          themeMode: mode,
          theme: ThemeCustom.lightTheme,
          darkTheme: ThemeCustom.darkTheme,
        );
      },
    ),
  );
}
