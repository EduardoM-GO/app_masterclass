import 'package:app_masterclass/modules/home/external/mapper/json_mapper.dart';

import '../../domain/entities/habilidade.dart';

class HabilidadeMapper implements JsonMapper<Habilidade> {
  @override
  Habilidade fromMap(Map<String, dynamic> map) => Habilidade(
        id: map['id']?.toInt() ?? 0,
        nome: map['nome'] ?? '',
        percentualCompetencia: map['percentualCompetencia']?.toInt() ?? 0,
      );

  @override
  Map<String, dynamic> toMap(Habilidade entities) => {
        'id': entities.id,
        'nome': entities.nome,
        'percentualCompetencia': entities.percentualCompetencia,
      };
}
