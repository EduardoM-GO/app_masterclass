import 'package:app_masterclass/core/themes/cubit/theme_cubit.dart';
import 'package:app_masterclass/core/themes/domain/repository/theme_mode_repository.dart';
import 'package:app_masterclass/core/themes/domain/use_case/set_theme_use_case.dart';
import 'package:app_masterclass/core/themes/external/cache/theme_mode_cache_impl.dart';
import 'package:app_masterclass/core/themes/infra/repository/theme_mode_repository_impl.dart';
import 'package:app_masterclass/modules/home/domain/entities/exercicio.dart';
import 'package:app_masterclass/modules/home/domain/repository/dev_repository.dart';
import 'package:app_masterclass/modules/home/domain/repository/git_repository.dart';
import 'package:app_masterclass/modules/home/domain/user_case/get_atividades_use_case.dart';
import 'package:app_masterclass/modules/home/domain/user_case/get_git_repositories_use_case.dart';
import 'package:app_masterclass/modules/home/domain/user_case/get_info_dev_use_case.dart';
import 'package:app_masterclass/modules/home/external/datalocal/atividades_datalocal_impl.dart';
import 'package:app_masterclass/modules/home/external/datalocal/info_dev_datalocal_impl.dart';
import 'package:app_masterclass/modules/home/external/datasource/repositories_git_datasource_impl.dart';
import 'package:app_masterclass/modules/home/external/mapper/atividade_mapper.dart';
import 'package:app_masterclass/modules/home/external/mapper/dev_mapper.dart';
import 'package:app_masterclass/modules/home/external/mapper/exercicio_mapper.dart';
import 'package:app_masterclass/modules/home/external/mapper/habilidade_mapper.dart';
import 'package:app_masterclass/modules/home/external/mapper/repository_git_mapper.dart';
import 'package:app_masterclass/modules/home/external/mapper/tecnologia_mapper.dart';
import 'package:app_masterclass/modules/home/infra/datalocal/atividades_datalocal.dart';
import 'package:app_masterclass/modules/home/infra/datasource/repositories_git_datasource.dart';
import 'package:app_masterclass/modules/home/infra/repository/atividade_repository_impl.dart';
import 'package:app_masterclass/modules/home/infra/repository/dev_repository_impl.dart';
import 'package:app_masterclass/modules/home/infra/repository/git_repository_impl.dart';
import 'package:app_masterclass/modules/home/presentation/pages/github/cubit/github_cubit.dart';
import 'package:app_masterclass/modules/home/presentation/pages/sobre_dev/cubit/sobre_dev_cubit.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

import '../../modules/home/domain/entities/atividade.dart';
import '../../modules/home/domain/entities/dev.dart';
import '../../modules/home/domain/entities/habilidade.dart';
import '../../modules/home/domain/entities/repository_git.dart';
import '../../modules/home/domain/entities/tecnologia.dart';
import '../../modules/home/domain/repository/atividade_repository.dart';
import '../../modules/home/external/mapper/json_mapper.dart';
import '../../modules/home/infra/datalocal/info_dev_datalocal.dart';
import '../../modules/home/presentation/pages/atividade/cubit/atividade_cubit.dart';
import '../themes/domain/use_case/get_theme_use_case.dart';
import '../themes/infra/cache/theme_mode_cache.dart';

class GetItInjector {
  GetItInjector() {
    GetIt.I.registerSingleton<HiveInterface>(Hive);

    GetIt.I
        .registerFactory<ThemeModeCache>(() => ThemeModeCacheImpl(GetIt.I()));
    GetIt.I.registerFactory<ThemeModeRepository>(
        () => ThemeModeRepositoryImpl(GetIt.I()));
    GetIt.I
        .registerFactory<SetThemeUseCase>(() => SetThemeUseCaseImpl(GetIt.I()));
    GetIt.I
        .registerFactory<GetThemeUseCase>(() => GetThemeUseCaseImpl(GetIt.I()));
    GetIt.I.registerSingleton<ThemeCubit>(ThemeCubit(GetIt.I(), GetIt.I()));

    //?Atividade
    GetIt.I.registerSingleton<JsonMapper<Exercicio>>(ExercicioMapper());
    GetIt.I
        .registerSingleton<JsonMapper<Atividade>>(AtividadeMapper(GetIt.I()));
    GetIt.I.registerFactory<AtividadesDatalocal>(
        () => AtividadesDatalocalImpl(GetIt.I()));
    GetIt.I.registerFactory<AtividadeRepository>(
        () => AtividadeRepositoryImpl(GetIt.I()));
    GetIt.I.registerFactory<GetAtividadesUseCase>(
        () => GetAtividadesUseCaseImpl(GetIt.I()));
    GetIt.I.registerSingleton<AtividadeCubit>(AtividadeCubit(GetIt.I()));

    //?Sobre dev
    GetIt.I.registerFactory<Dio>(() => Dio());
    GetIt.I.registerSingleton<JsonMapper<Tecnologia>>(TecnologiaMapper());
    GetIt.I.registerSingleton<JsonMapper<Habilidade>>(HabilidadeMapper());
    GetIt.I.registerSingleton<JsonMapper<Dev>>(DevMapper(GetIt.I(), GetIt.I()));
    GetIt.I.registerFactory<InfoDevDatalocal>(
        () => InfoDevDatalocalImpl(GetIt.I()));
    GetIt.I.registerFactory<DevRepository>(() => DevRepositoryImpl(GetIt.I()));
    GetIt.I.registerFactory<GetInfoDevUseCase>(
        () => GetInfoDevUseCaseImpl(GetIt.I()));
    GetIt.I.registerSingleton<SobreDevCubit>(SobreDevCubit(GetIt.I()));

    //? GitHub
    GetIt.I.registerSingleton<JsonMapper<RepositoryGit>>(RepositoryGitMapper());
    GetIt.I.registerFactory<RepositoriesGitDatasource>(
        () => RepositoriesGitDatasourceImpl(GetIt.I(), GetIt.I()));
    GetIt.I.registerFactory<GitRepository>(() => GitRepositoryImpl(GetIt.I()));
    GetIt.I.registerFactory<GetGitRepositoriesUseCase>(
        () => GetGitRepositoriesUseCaseImpl(GetIt.I(), GetIt.I()));
    GetIt.I.registerSingleton<GithubCubit>(GithubCubit(GetIt.I()));
  }
}
