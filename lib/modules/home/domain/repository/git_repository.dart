import 'package:dartz/dartz.dart';

import '../../../../core/error/failure.dart';
import '../entities/repository_git.dart';

abstract class GitRepository {
  Future<Either<Failure, List<RepositoryGit>>> call({required String user});
}
