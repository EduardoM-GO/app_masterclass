import 'dart:convert';

class Atividade {
  final String id;
  final String titulo;
  final String pathIcon;
  final String descricao;
  final String linkGit;
  final int quantidade;
  Atividade({
    required this.id,
    required this.titulo,
    required this.pathIcon,
    required this.descricao,
    required this.linkGit,
    required this.quantidade,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'titulo': titulo,
      'pathIcon': pathIcon,
      'descricao': descricao,
      'linkGit': linkGit,
      'quantidade': quantidade,
    };
  }

  factory Atividade.fromMap(Map<String, dynamic> map) {
    return Atividade(
      id: map['id'] ?? '',
      titulo: map['titulo'] ?? '',
      pathIcon: map['pathIcon'] ?? '',
      descricao: map['descricao'] ?? '',
      linkGit: map['linkGit'] ?? '',
      quantidade: map['quantidade']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Atividade.fromJson(String source) =>
      Atividade.fromMap(json.decode(source));
}
