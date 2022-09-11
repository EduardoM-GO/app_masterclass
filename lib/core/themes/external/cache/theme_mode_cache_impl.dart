import 'package:app_masterclass/core/error/failure.dart';
import 'package:app_masterclass/core/themes/infra/cache/theme_mode_cache.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:hive/hive.dart';
import 'package:path_provider/path_provider.dart';

class ThemeModeCacheImpl implements ThemeModeCache {
  final HiveInterface _hive;
  final String _nomeBox = 'preferencia_box';
  ThemeModeCacheImpl(this._hive);

  Future<Box> init() async {
    _hive.init((await getApplicationDocumentsDirectory()).path);

    return _hive.openBox(_nomeBox);
  }

  @override
  Future<Either<Failure, ThemeMode>> get() async {
    try {
      final box = await init();

      switch (box.get('themeMode', defaultValue: 'system')) {
        case 'dark':
          return const Right(ThemeMode.dark);
        case 'light':
          return const Right(ThemeMode.light);
        default:
          return const Right(ThemeMode.system);
      }
    } catch (exception, stack) {
      return Left(
        Failure(
            exception: exception,
            stackTrace: stack,
            tag: 'ThemeModeCacheImpl-get'),
      );
    }
  }

  @override
  Future<Either<Failure, Unit>> set({required ThemeMode mode}) async {
    try {
      final box = await init();
      await box.put('themeMode', mode.name);
      return const Right(unit);
    } catch (exception, stack) {
      return Left(
        Failure(
          exception: exception,
          stackTrace: stack,
          tag: 'ThemeModeCacheImpl-set',
        ),
      );
    }
  }
}
