import 'dart:convert';

class Exercicio {
  final int id;
  final String nome;
  Exercicio({
    required this.id,
    required this.nome,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
    };
  }

  factory Exercicio.fromMap(Map<String, dynamic> map) {
    return Exercicio(
      id: map['id']?.toInt() ?? 0,
      nome: map['nome'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Exercicio.fromJson(String source) =>
      Exercicio.fromMap(json.decode(source));
}
