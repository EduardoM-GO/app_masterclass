import 'package:app_masterclass/core/themes/cubit/theme_cubit.dart';
import 'package:app_masterclass/core/themes/domain/repository/theme_mode_repository.dart';
import 'package:app_masterclass/core/themes/domain/use_case/set_theme_use_case.dart';
import 'package:app_masterclass/core/themes/external/cache/theme_mode_cache_impl.dart';
import 'package:app_masterclass/core/themes/infra/repository/theme_mode_repository_impl.dart';
import 'package:get_it/get_it.dart';
import 'package:hive/hive.dart';

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
  }
}
