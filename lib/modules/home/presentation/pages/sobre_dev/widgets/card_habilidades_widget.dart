import 'package:app_masterclass/modules/home/presentation/pages/sobre_dev/domian/entities/habilidade.dart';
import 'package:app_masterclass/modules/home/presentation/pages/sobre_dev/widgets/habilidade_info_widget.dart';
import 'package:flutter/material.dart';

class CardHabilidadesWidget extends StatelessWidget {
  final List<Habilidade> habilidades;
  const CardHabilidadesWidget({Key? key, required this.habilidades})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          mainAxisSize: MainAxisSize.min,
          children: habilidades
              .map(
                (e) => Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 8.0),
                  child: HabilidadeInfoWidget(habilidade: e),
                ),
              )
              .toList(),
        ),
      ),
    );
  }
}
