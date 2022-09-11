import 'package:app_masterclass/modules/home/external/mapper/json_mapper.dart';

import '../../domain/entities/dev.dart';
import '../../domain/entities/habilidade.dart';
import '../../domain/entities/tecnologia.dart';

class DevMapper implements JsonMapper<Dev> {
  final JsonMapper<Tecnologia> tecnologiaMapper;
  final JsonMapper<Habilidade> habilidadeMapper;

  DevMapper(this.tecnologiaMapper, this.habilidadeMapper);

  @override
  Dev fromMap(Map<String, dynamic> map) => Dev(
        map['nome'] ?? '',
        map['urlFoto'] ?? '',
        map['descricao'] ?? '',
        map['whatsapp'] ?? '',
        map['gitHub'] ?? '',
        map['instagram'] ?? '',
        map['facebook'] ?? '',
        List<Tecnologia>.from(
          map['favoritas']?.map((x) => tecnologiaMapper.fromMap(x)),
        ),
        List<Habilidade>.from(
            map['habilidades']?.map((x) => habilidadeMapper.fromMap(x))),
      );

  @override
  Map<String, dynamic> toMap(Dev entities) => {
        'nome': entities.nome,
        'urlFoto': entities.urlFoto,
        'descricao': entities.descricao,
        'whatsapp': entities.whatsapp,
        'gitHub': entities.gitHub,
        'instagram': entities.instagram,
        'facebook': entities.facebook,
        'favoritas':
            entities.favoritas.map((x) => tecnologiaMapper.toMap(x)).toList(),
        'habilidades':
            entities.habilidades.map((x) => habilidadeMapper.toMap(x)).toList(),
      };
}
