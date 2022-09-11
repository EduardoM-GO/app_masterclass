import 'dart:convert';

import 'package:app_masterclass/core/error/failure.dart';
import 'package:app_masterclass/modules/home/external/mapper/json_mapper.dart';
import 'package:app_masterclass/modules/home/infra/datalocal/info_dev_datalocal.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';

import '../../domain/entities/dev.dart';

class InfoDevDatalocalImpl implements InfoDevDatalocal {
  final JsonMapper<Dev> _jsonMapper;

  InfoDevDatalocalImpl(this._jsonMapper);
  @override
  Future<Either<Failure, Dev>> call() async {
    try {
      final file = await rootBundle.loadString('assets/json/dev.json');
      final Map json = jsonDecode(file);
      return Right(_jsonMapper.fromMap(json as Map<String, dynamic>));
    } catch (exception, stack) {
      return Left(Failure(
          tag: 'InfoDevDatalocalImpl-call',
          exception: exception,
          stackTrace: stack));
    }
  }
}
