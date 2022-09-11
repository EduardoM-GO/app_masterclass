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
}
