import 'package:app_masterclass/core/error/failure.dart';
import 'package:app_masterclass/core/themes/domain/repository/theme_mode_repository.dart';
import 'package:app_masterclass/core/themes/infra/cache/theme_mode_cache.dart';
import 'package:flutter/material.dart';
import 'package:dartz/dartz.dart';

class ThemeModeRepositoryImpl implements ThemeModeRepository {
  final ThemeModeCache _cache;

  ThemeModeRepositoryImpl(this._cache);

  @override
  Future<Either<Failure, ThemeMode>> get() => _cache.get();

  @override
  Future<Either<Failure, Unit>> set({required ThemeMode mode}) =>
      _cache.set(mode: mode);
}
