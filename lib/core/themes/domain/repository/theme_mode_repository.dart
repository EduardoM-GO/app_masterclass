import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

import '../../../error/failure.dart';

abstract class ThemeModeRepository {
  Future<Either<Failure, Unit>> set({required ThemeMode mode});
  Future<Either<Failure, ThemeMode>> get();
}
