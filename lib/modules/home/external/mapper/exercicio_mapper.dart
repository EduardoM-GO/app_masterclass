import 'package:app_masterclass/modules/home/external/mapper/json_mapper.dart';

import '../../domain/entities/exercicio.dart';

class ExercicioMapper implements JsonMapper<Exercicio> {
  @override
  Exercicio fromMap(Map<String, dynamic> map) => Exercicio(
        id: map['id']?.toInt() ?? 0,
        nome: map['nome'] ?? '',
        rota: map['rota'] ?? '',
      );
  @override
  Map<String, dynamic> toMap(Exercicio entities) =>
      {'id': entities.id, 'nome': entities.nome, 'rota': entities.rota};
}
