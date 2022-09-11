import 'package:app_masterclass/core/error/failure.dart';
import 'package:app_masterclass/core/themes/domain/repository/theme_mode_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

abstract class SetThemeUseCase {
  Future<Either<Failure, Unit>> call({required ThemeMode mode});
}

class SetThemeUseCaseImpl implements SetThemeUseCase {
  final ThemeModeRepository _repository;

  SetThemeUseCaseImpl(this._repository);

  @override
  Future<Either<Failure, Unit>> call({required ThemeMode mode}) =>
      _repository.set(mode: mode);
}
