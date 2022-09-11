import 'package:app_masterclass/core/error/failure.dart';
import 'package:app_masterclass/modules/home/domain/repository/dev_repository.dart';
import 'package:dartz/dartz.dart';

import '../entities/dev.dart';

abstract class GetInfoDevUseCase {
  Future<Either<Failure, Dev>> call();
}

class GetInfoDevUseCaseImpl implements GetInfoDevUseCase {
  final DevRepository _repository;

  GetInfoDevUseCaseImpl(this._repository);

  @override
  Future<Either<Failure, Dev>> call() => _repository();
}
