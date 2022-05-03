import 'dart:convert';

import 'package:app_masterclass/modules/home/domain/entities/exercicio.dart';

class Atividade {
  final String id;
  final String titulo;
  final String pathIcon;
  final String descricao;
  final String linkGit;
  final List<Exercicio> exercicios;
  Atividade({
    required this.id,
    required this.titulo,
    required this.pathIcon,
    required this.descricao,
    required this.linkGit,
    required this.exercicios,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titulo': titulo,
      'pathIcon': pathIcon,
      'descricao': descricao,
      'linkGit': linkGit,
      'exercicios': exercicios.map((x) => x.toMap()).toList(),
    };
  }

  factory Atividade.fromMap(Map<String, dynamic> map) {
    return Atividade(
      id: map['id'] ?? '',
      titulo: map['titulo'] ?? '',
      pathIcon: map['pathIcon'] ?? '',
      descricao: map['descricao'] ?? '',
      linkGit: map['linkGit'] ?? '',
      exercicios: List<Exercicio>.from(
          map['exercicios']?.map((x) => Exercicio.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Atividade.fromJson(String source) =>
      Atividade.fromMap(json.decode(source));
}
