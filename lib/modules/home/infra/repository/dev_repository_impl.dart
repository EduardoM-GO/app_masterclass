import 'package:app_masterclass/modules/home/domain/entities/dev.dart';
import 'package:app_masterclass/core/error/failure.dart';
import 'package:app_masterclass/modules/home/domain/repository/dev_repository.dart';
import 'package:app_masterclass/modules/home/infra/datalocal/info_dev_datalocal.dart';
import 'package:dartz/dartz.dart';

class DevRepositoryImpl implements DevRepository {
  final InfoDevDatalocal _datalocal;

  DevRepositoryImpl(this._datalocal);
  @override
  Future<Either<Failure, Dev>> call() => _datalocal();
}
