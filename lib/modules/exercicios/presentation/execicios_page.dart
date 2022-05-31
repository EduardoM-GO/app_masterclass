import 'package:app_masterclass/modules/home/domain/entities/exercicio.dart';
import 'package:app_masterclass/modules/widgets/app_bar_custom.dart';
import 'package:app_masterclass/modules/widgets/scaffold_custom.dart';
import 'package:flutter/material.dart';

class ExeciciosPage extends StatelessWidget {
  final String topico;
  final List<Exercicio> exercicios;
  const ExeciciosPage(
      {Key? key, required this.topico, required this.exercicios})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScaffoldCustom(
      appBar:
          AppBarCustom(titulo: topico, subTitulo: 'Flutterando Masterclass'),
      body: Padding(
        padding: const EdgeInsets.only(top: 26.0),
        child: ListView.builder(
          itemCount: exercicios.length,
          itemBuilder: (context, index) => InkWell(
            onTap: () =>
                Navigator.of(context).pushNamed(exercicios[index].rota),
            child: Card(
              margin: const EdgeInsets.only(bottom: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      alignment: Alignment.center,
                      height: 33,
                      width: 33,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Theme.of(context).primaryColor),
                      child: Text(
                        exercicios[index].id.toString(),
                        style: Theme.of(context)
                            .textTheme
                            .subtitle1
                            ?.copyWith(color: Theme.of(context).highlightColor),
                      ),
                    ),
                    Text(
                      exercicios[index].nome,
                      style: Theme.of(context)
                          .textTheme
                          .subtitle1
                          ?.copyWith(color: Theme.of(context).highlightColor),
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
