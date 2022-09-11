import 'package:app_masterclass/core/error/failure.dart';
import 'package:app_masterclass/core/themes/domain/repository/theme_mode_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

abstract class GetThemeUseCase {
  Future<Either<Failure, ThemeMode>> call();
}

class GetThemeUseCaseImpl implements GetThemeUseCase {
  final ThemeModeRepository _repository;

  GetThemeUseCaseImpl(this._repository);
  @override
  Future<Either<Failure, ThemeMode>> call() => _repository.get();
}
