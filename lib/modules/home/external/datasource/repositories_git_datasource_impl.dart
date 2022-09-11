import 'dart:convert';

import 'package:app_masterclass/modules/home/domain/entities/repository_git.dart';
import 'package:app_masterclass/core/error/failure.dart';
import 'package:app_masterclass/modules/home/external/mapper/json_mapper.dart';
import 'package:app_masterclass/modules/home/infra/datasource/repositories_git_datasource.dart';
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

class RepositoriesGitDatasourceImpl implements RepositoriesGitDatasource {
  final Dio _dio;
  final JsonMapper<RepositoryGit> _jsonMapper;

  RepositoriesGitDatasourceImpl(this._dio, this._jsonMapper);

  @override
  Future<Either<Failure, List<RepositoryGit>>> call(
      {required String user}) async {
    try {
      _dio.transformer = DefaultTransformer(
        jsonDecodeCallback: (value) {
          final json = jsonDecode(value);
          if (json is List) {
            return json.map((e) => _jsonMapper.fromMap(e)).toList();
          }
        },
      );
      final result = await _dio.get('https://api.github.com/users/$user/repos');

      if (result.statusCode == 200) {
        return Right(result.data);
      } else if (result.statusCode == 204) {
        return const Right([]);
      }
      throw DioError(requestOptions: result.requestOptions);
    } on DioError catch (exception, stack) {
      return Left(
        Failure(
            exception: exception,
            stackTrace: stack,
            tag: 'RepositoriesGitDatasourceImpl-DioError'),
      );
    } catch (exception, stack) {
      return Left(
        Failure(
            exception: exception,
            stackTrace: stack,
            tag: 'RepositoriesGitDatasourceImpl-catch'),
      );
    }
  }
}
