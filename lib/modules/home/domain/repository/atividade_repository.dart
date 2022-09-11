import 'package:app_masterclass/core/error/failure.dart';
import 'package:app_masterclass/modules/home/domain/entities/atividade.dart';
import 'package:dartz/dartz.dart';

abstract class AtividadeRepository {
  Future<Either<Failure, List<Atividade>>> call();
}
