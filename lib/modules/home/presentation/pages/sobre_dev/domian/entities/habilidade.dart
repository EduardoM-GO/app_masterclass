import 'dart:convert';

class Habilidade {
  final int id;
  final String nome;
  final int percentualCompetencia;
  Habilidade({
    required this.id,
    required this.nome,
    required this.percentualCompetencia,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'percentualCompetencia': percentualCompetencia,
    };
  }

  factory Habilidade.fromMap(Map<String, dynamic> map) {
    return Habilidade(
      id: map['id']?.toInt() ?? 0,
      nome: map['nome'] ?? '',
      percentualCompetencia: map['percentualCompetencia']?.toInt() ?? 0,
    );
  }

  String toJson() => json.encode(toMap());

  factory Habilidade.fromJson(String source) =>
      Habilidade.fromMap(json.decode(source));

  @override
  String toString() =>
      'Habilidade(id: $id, nome: $nome, percentualCompetencia: $percentualCompetencia)';
}
