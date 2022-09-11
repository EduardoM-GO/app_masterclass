import 'package:app_masterclass/modules/home/domain/entities/repository_git.dart';
import 'package:app_masterclass/core/error/failure.dart';
import 'package:app_masterclass/modules/home/domain/repository/git_repository.dart';
import 'package:app_masterclass/modules/home/infra/datasource/repositories_git_datasource.dart';
import 'package:dartz/dartz.dart';

class GitRepositoryImpl implements GitRepository {
  final RepositoriesGitDatasource _datasource;

  GitRepositoryImpl(this._datasource);
  @override
  Future<Either<Failure, List<RepositoryGit>>> call({required String user}) =>
      _datasource(user: user);
}
