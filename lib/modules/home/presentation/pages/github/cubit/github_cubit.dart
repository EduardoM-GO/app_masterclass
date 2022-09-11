import 'package:app_masterclass/core/error/failure.dart';
import 'package:app_masterclass/modules/home/domain/entities/repository_git.dart';
import 'package:app_masterclass/modules/home/domain/user_case/get_git_repositories_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'github_state.dart';

class GithubCubit extends Cubit<GithubState> {
  final GetGitRepositoriesUseCase _useCase;
  GithubCubit(this._useCase) : super(GithubInitialState());

  Future<void> getRepositories() async {
    emit(GithubLoadingState());
    final result = await _useCase();
    result.fold(
      (l) => emit(GithubFailureState(l)),
      (r) => emit(GithubSuccesState(r)),
    );
  }
}
