import 'package:app_masterclass/modules/home/domain/entities/atividade.dart';
import 'package:app_masterclass/modules/home/domain/entities/exercicio.dart';
import 'package:app_masterclass/modules/home/external/mapper/json_mapper.dart';

class AtividadeMapper implements JsonMapper<Atividade> {
  final JsonMapper<Exercicio> _jsonMapper;

  AtividadeMapper(this._jsonMapper);

  @override
  Atividade fromMap(Map<String, dynamic> map) => Atividade(
        id: map['id'] ?? '',
        titulo: map['titulo'] ?? '',
        pathIcon: map['pathIcon'] ?? '',
        descricao: map['descricao'] ?? '',
        linkGit: map['linkGit'] ?? '',
        exercicios: List<Exercicio>.from(
            map['exercicios']?.map((x) => _jsonMapper.fromMap(x))),
      );

  @override
  Map<String, dynamic> toMap(Atividade entities) => {
        'id': entities.id,
        'titulo': entities.titulo,
        'pathIcon': entities.pathIcon,
        'descricao': entities.descricao,
        'linkGit': entities.linkGit,
        'exercicios':
            entities.exercicios.map((x) => _jsonMapper.toMap(x)).toList(),
      };
}
