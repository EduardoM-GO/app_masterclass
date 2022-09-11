part of 'github_cubit.dart';

@immutable
abstract class GithubState {}

class GithubInitialState extends GithubState {}

class GithubLoadingState extends GithubState {}

class GithubSuccesState extends GithubState {
  final List<RepositoryGit> repositories;

  GithubSuccesState(this.repositories);
}

class GithubFailureState extends GithubState {
  final Failure failure;

  GithubFailureState(this.failure);
}
