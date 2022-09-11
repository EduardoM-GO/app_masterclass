import 'package:app_masterclass/modules/home/domain/entities/atividade.dart';
import 'package:app_masterclass/core/error/failure.dart';
import 'package:app_masterclass/modules/home/domain/repository/atividade_repository.dart';
import 'package:app_masterclass/modules/home/infra/datalocal/atividades_datalocal.dart';
import 'package:dartz/dartz.dart';

class AtividadeRepositoryImpl implements AtividadeRepository {
  final AtividadesDatalocal _datalocal;

  AtividadeRepositoryImpl(this._datalocal);
  @override
  Future<Either<Failure, List<Atividade>>> call() => _datalocal();
}
