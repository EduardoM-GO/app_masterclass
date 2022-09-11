class Habilidade {
  final int id;
  final String nome;
  final int percentualCompetencia;
  Habilidade({
    required this.id,
    required this.nome,
    required this.percentualCompetencia,
  });
  @override
  String toString() =>
      'Habilidade(id: $id, nome: $nome, percentualCompetencia: $percentualCompetencia)';
}
