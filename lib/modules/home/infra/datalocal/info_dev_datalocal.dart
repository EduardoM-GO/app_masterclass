import 'package:app_masterclass/core/error/failure.dart';
import 'package:dartz/dartz.dart';

import '../../domain/entities/dev.dart';

abstract class InfoDevDatalocal {
  Future<Either<Failure, Dev>> call();
}
