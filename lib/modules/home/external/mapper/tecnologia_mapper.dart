import 'package:app_masterclass/modules/home/domain/entities/tecnologia.dart';
import 'package:app_masterclass/modules/home/external/mapper/json_mapper.dart';

class TecnologiaMapper implements JsonMapper<Tecnologia> {
  @override
  Tecnologia fromMap(Map<String, dynamic> map) => Tecnologia(
        id: map['id']?.toInt() ?? 0,
        urlLogo: map['urlLogo'] ?? '',
        nome: map['nome'] ?? '',
      );

  @override
  Map<String, dynamic> toMap(Tecnologia entities) => {
        'id': entities.id,
        'urlLogo': entities.urlLogo,
        'nome': entities.nome,
      };
}
