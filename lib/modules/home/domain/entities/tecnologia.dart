class Tecnologia {
  final int id;
  final String urlLogo;
  final String nome;

  Tecnologia({
    required this.id,
    required this.urlLogo,
    required this.nome,
  });

  @override
  String toString() => 'Tecnologia(id: $id, urlLogo: $urlLogo, nome: $nome)';
}
