part of 'theme_cubit.dart';

@immutable
abstract class ThemeState {}

class ThemeInitialState extends ThemeState {}

class ThemeSuccessState extends ThemeState {
  final ThemeMode themeMode;
  ThemeSuccessState({
    required this.themeMode,
  });
}

class ThemeLoadingState extends ThemeState {}

class ThemeFailureState extends ThemeState {
  final Failure erro;
  ThemeFailureState({
    required this.erro,
  });
}
