import 'dart:convert';

import 'package:app_masterclass/modules/home/domain/entities/atividade.dart';
import 'package:app_masterclass/core/error/failure.dart';
import 'package:app_masterclass/modules/home/external/mapper/json_mapper.dart';
import 'package:app_masterclass/modules/home/infra/datalocal/atividades_datalocal.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';

class AtividadesDatalocalImpl implements AtividadesDatalocal {
  final JsonMapper<Atividade> _jsonMapper;

  AtividadesDatalocalImpl(this._jsonMapper);
  @override
  Future<Either<Failure, List<Atividade>>> call() async {
    try {
      final file = await rootBundle.loadString('assets/json/atividades.json');
      final List json = jsonDecode(file);
      return Right(json.map((e) => _jsonMapper.fromMap(e)).toList());
    } catch (exception, stack) {
      return Left(Failure(
          tag: 'AtividadesDatalocalImpl-call',
          exception: exception,
          stackTrace: stack));
    }
  }
}
