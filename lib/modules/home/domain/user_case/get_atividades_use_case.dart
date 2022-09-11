import 'package:app_masterclass/core/error/failure.dart';
import 'package:app_masterclass/modules/home/domain/entities/atividade.dart';
import 'package:app_masterclass/modules/home/domain/repository/atividade_repository.dart';
import 'package:dartz/dartz.dart';

abstract class GetAtividadesUseCase {
  Future<Either<Failure, List<Atividade>>> call();
}

class GetAtividadesUseCaseImpl implements GetAtividadesUseCase {
  final AtividadeRepository _repository;

  GetAtividadesUseCaseImpl(this._repository);
  @override
  Future<Either<Failure, List<Atividade>>> call() => _repository();
}
