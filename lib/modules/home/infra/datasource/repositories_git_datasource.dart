import 'package:app_masterclass/core/error/failure.dart';
import 'package:app_masterclass/modules/home/domain/entities/repository_git.dart';
import 'package:dartz/dartz.dart';

abstract class RepositoriesGitDatasource {
  Future<Either<Failure, List<RepositoryGit>>> call({required String user});
}
