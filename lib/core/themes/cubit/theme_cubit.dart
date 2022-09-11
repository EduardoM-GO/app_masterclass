import 'package:app_masterclass/core/error/failure.dart';
import 'package:app_masterclass/core/themes/domain/use_case/get_theme_use_case.dart';
import 'package:app_masterclass/core/themes/domain/use_case/set_theme_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';

part 'theme_state.dart';

class ThemeCubit extends Cubit<ThemeState> {
  final GetThemeUseCase _getThemeUseCase;
  final SetThemeUseCase _setThemeUseCase;
  ThemeCubit(this._getThemeUseCase, this._setThemeUseCase)
      : super(ThemeInitialState());

  late ThemeMode _modeAtual;

  Future<void> getTheme() async {
    emit(ThemeLoadingState());
    final result = await _getThemeUseCase();
    result.fold(
      (l) => emit(
        ThemeFailureState(erro: l),
      ),
      (r) {
        _modeAtual = r;
        emit(
          ThemeSuccessState(themeMode: r),
        );
      },
    );
  }

  Future<void> changeTheme({required BuildContext context}) async {
    emit(ThemeLoadingState());
    if (_modeAtual == ThemeMode.system) {
      _modeAtual =
          MediaQuery.of(context).platformBrightness.name == ThemeMode.dark.name
              ? ThemeMode.light
              : ThemeMode.dark;
    }
    final ThemeMode themeMode =
        _modeAtual == ThemeMode.dark ? ThemeMode.light : ThemeMode.dark;
    final result = await _setThemeUseCase(mode: themeMode);
    result.fold(
        (l) => emit(
              ThemeFailureState(erro: l),
            ), (r) {
      _modeAtual = themeMode;
      emit(
        ThemeSuccessState(themeMode: themeMode),
      );
    });
  }
}
