import 'package:app_masterclass/modules/home/domain/entities/repository_git.dart';
import 'package:app_masterclass/modules/home/external/mapper/json_mapper.dart';

class RepositoryGitMapper implements JsonMapper<RepositoryGit> {
  @override
  RepositoryGit fromMap(Map<String, dynamic> map) => RepositoryGit(
      nome: map['name'] as String? ?? '',
      descricao: map['description'] as String? ?? '',
      linguagem: map['language'] as String? ?? '',
      link: map['html_url'] as String? ?? '');

  @override
  Map<String, dynamic> toMap(RepositoryGit entities) => {};
}
