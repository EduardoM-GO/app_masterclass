import 'package:app_masterclass/modules/home/domain/entities/repository_git.dart';
import 'package:app_masterclass/modules/home/presentation/pages/github/cubit/github_cubit.dart';
import 'package:app_masterclass/modules/home/presentation/pages/github/widgets/card_repository_widget.dart';
import 'package:app_masterclass/modules/widgets/erro_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class GithubPage extends StatefulWidget {
  const GithubPage({Key? key}) : super(key: key);

  @override
  State<GithubPage> createState() => _GithubPageState();
}

class _GithubPageState extends State<GithubPage> {
  late final GithubCubit bloc;
  @override
  void initState() {
    super.initState();
    bloc = GetIt.I.get<GithubCubit>();
    bloc.getRepositories();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GithubCubit, GithubState>(
      bloc: bloc,
      builder: (context, state) {
        if (state is GithubLoadingState) {
          return const Center(
            child: CircularProgressIndicator(),
          );
        } else if (state is GithubFailureState) {
          return ErroWidget(
              recarregar: () => bloc.getRepositories(), failure: state.failure);
        }
        late final List<RepositoryGit> repositories;
        if (state is GithubSuccesState) {
          repositories = state.repositories;
        } else {
          repositories = [];
        }
        return ListView.builder(
          itemCount: repositories.length,
          itemBuilder: (context, index) =>
              CardRepositoryWidget(repository: repositories[index]),
        );
      },
    );
  }
}
