import 'dart:convert';

import 'package:app_masterclass/modules/home/presentation/pages/sobre_dev/domian/entities/habilidade.dart';
import 'package:app_masterclass/modules/home/presentation/pages/sobre_dev/domian/entities/tecnologia.dart';

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

  Map<String, dynamic> toMap() {
    return {
      'nome': nome,
      'urlFoto': urlFoto,
      'descricao': descricao,
      'whatsapp': whatsapp,
      'gitHub': gitHub,
      'instagram': instagram,
      'facebook': facebook,
      'favoritas': favoritas.map((x) => x.toMap()).toList(),
      'habilidades': habilidades.map((x) => x.toMap()).toList(),
    };
  }

  factory Dev.fromMap(Map<String, dynamic> map) {
    return Dev(
      map['nome'] ?? '',
      map['urlFoto'] ?? '',
      map['descricao'] ?? '',
      map['whatsapp'] ?? '',
      map['gitHub'] ?? '',
      map['instagram'] ?? '',
      map['facebook'] ?? '',
      List<Tecnologia>.from(
          map['favoritas']?.map((x) => Tecnologia.fromMap(x))),
      List<Habilidade>.from(
          map['habilidades']?.map((x) => Habilidade.fromMap(x))),
    );
  }

  String toJson() => json.encode(toMap());

  factory Dev.fromJson(String source) => Dev.fromMap(json.decode(source));

  @override
  String toString() {
    return 'Dev(nome: $nome, urlFoto: $urlFoto, descricao: $descricao, whatsapp: $whatsapp, gitHub: $gitHub, instagram: $instagram, facebook: $facebook, favoritas: $favoritas, habilidades: $habilidades)';
  }
}
