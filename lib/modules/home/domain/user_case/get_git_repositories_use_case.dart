import 'package:app_masterclass/core/error/failure.dart';
import 'package:app_masterclass/modules/home/domain/entities/repository_git.dart';
import 'package:app_masterclass/modules/home/domain/repository/dev_repository.dart';
import 'package:app_masterclass/modules/home/domain/repository/git_repository.dart';
import 'package:dartz/dartz.dart';

abstract class GetGitRepositoriesUseCase {
  Future<Either<Failure, List<RepositoryGit>>> call();
}

class GetGitRepositoriesUseCaseImpl implements GetGitRepositoriesUseCase {
  final DevRepository _devRepository;
  final GitRepository _gitRepository;

  GetGitRepositoriesUseCaseImpl(this._devRepository, this._gitRepository);

  @override
  Future<Either<Failure, List<RepositoryGit>>> call() async {
    final resultDev = await _devRepository();
    return await resultDev.fold(
      (l) async => Left(l),
      (r) async {
        final resultGit = await _gitRepository(user: r.gitHub);
        return resultGit;
      },
    );
  }
}
