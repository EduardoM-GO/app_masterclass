import 'dart:convert';

class Tecnologia {
  final int id;
  final String urlLogo;
  final String nome;

  Tecnologia({
    required this.id,
    required this.urlLogo,
    required this.nome,
  });

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'urlLogo': urlLogo,
      'nome': nome,
    };
  }

  factory Tecnologia.fromMap(Map<String, dynamic> map) {
    return Tecnologia(
      id: map['id']?.toInt() ?? 0,
      urlLogo: map['urlLogo'] ?? '',
      nome: map['nome'] ?? '',
    );
  }

  String toJson() => json.encode(toMap());

  factory Tecnologia.fromJson(String source) =>
      Tecnologia.fromMap(json.decode(source));

  @override
  String toString() => 'Tecnologia(id: $id, urlLogo: $urlLogo, nome: $nome)';
}
