import 'package:app_masterclass/core/error/failure.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';

abstract class ThemeModeCache {
  Future<Either<Failure, Unit>> set({required ThemeMode mode});
  Future<Either<Failure, ThemeMode>> get();
}
