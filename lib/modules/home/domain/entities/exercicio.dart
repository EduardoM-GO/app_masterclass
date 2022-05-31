import 'dart:convert';

class Exercicio {
  final int id;
  final String nome;
  final String rota;
  Exercicio({
    required this.id,
    required this.nome,
    required this.rota,
  });

  Map<String, dynamic> toMap() {
    return {'id': id, 'nome': nome, 'rota': rota};
  }

  factory Exercicio.fromMap(Map<String, dynamic> map) {
    return Exercicio(
      id: map['id']?.toInt() ?? 0,
      nome: map['nome'] ?? '',
      rota: map['rota'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Exercicio.fromJson(String source) =>
      Exercicio.fromMap(json.decode(source));
}
