import 'package:app_masterclass/modules/home/domain/entities/habilidade.dart';
import 'package:app_masterclass/modules/home/domain/entities/tecnologia.dart';

class Dev {
  final String nome;
  final String urlFoto;
  final String descricao;
  final String whatsapp;
  final String gitHub;
  final String instagram;
  final String facebook;
  final List<Tecnologia> favoritas;
  final List<Habilidade> habilidades;

  Dev(this.nome, this.urlFoto, this.descricao, this.whatsapp, this.gitHub,
      this.instagram, this.facebook, this.favoritas, this.habilidades);
  Dev.empty()
      : nome = '',
        urlFoto = '',
        descricao = '',
        whatsapp = '',
        gitHub = '',
        instagram = '',
        facebook = '',
        favoritas = [],
        habilidades = [];

  @override
  String toString() {
    return 'Dev(nome: $nome, urlFoto: $urlFoto, descricao: $descricao, whatsapp: $whatsapp, gitHub: $gitHub, instagram: $instagram, facebook: $facebook, favoritas: $favoritas, habilidades: $habilidades)';
  }
}
