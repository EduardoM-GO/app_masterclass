import 'package:app_masterclass/core/error/failure.dart';
import 'package:app_masterclass/modules/home/domain/entities/dev.dart';
import 'package:dartz/dartz.dart';

abstract class DevRepository {
  Future<Either<Failure, Dev>> call();
}
