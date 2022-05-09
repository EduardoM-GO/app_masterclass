import 'package:app_masterclass/modules/exercicios/presentation/execicios_page.dart';
import 'package:app_masterclass/modules/home/domain/entities/atividade.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CardWidget extends StatelessWidget {
  final Atividade atividade;
  const CardWidget({Key? key, required this.atividade}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8.0),
      shape: OutlineInputBorder(
        borderRadius: BorderRadius.circular(20),
        borderSide: const BorderSide(color: Colors.transparent),
      ),
      elevation: 0,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  width: 43,
                  height: 43,
                  alignment: Alignment.center,
                  decoration: BoxDecoration(
                    color: Theme.of(context).primaryColor,
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset(
                    atividade.pathIcon,
                    color: Theme.of(context).cardColor,
                  ),
                ),
                const SizedBox(
                  width: 13.0,
                ),
                Expanded(
                  child: Text(
                    atividade.titulo,
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: Theme.of(context).highlightColor),
                  ),
                ),
                Text.rich(
                  TextSpan(
                      text: 'Exercicios: ',
                      children: [
                        TextSpan(
                            text: atividade.exercicios.length.toString(),
                            style: Theme.of(context)
                                .textTheme
                                .caption
                                ?.copyWith(
                                    color: Theme.of(context).highlightColor)),
                      ],
                      style: Theme.of(context).textTheme.bodyText2?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface)),
                )
              ],
            ),
            Padding(
              padding: const EdgeInsets.only(top: 37, bottom: 33),
              child: Text(
                atividade.descricao,
                style: Theme.of(context)
                    .textTheme
                    .bodyText2
                    ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
              ),
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Icon(
                  FontAwesomeIcons.github,
                  color: Theme.of(context).highlightColor,
                  size: 20,
                ),
                const SizedBox(
                  width: 13.0,
                ),
                Expanded(
                  child: Text(
                    'Acessar código fonte',
                    style: Theme.of(context)
                        .textTheme
                        .subtitle1
                        ?.copyWith(color: Theme.of(context).highlightColor),
                  ),
                ),
                ElevatedButton(
                  onPressed: () => Navigator.of(context).pushNamed(
                    '/exercicios',
                    arguments: ExeciciosPage(
                        topico: atividade.titulo,
                        exercicios: atividade.exercicios),
                  ),
                  child: Text(
                    'Ver mais',
                    style: TextStyle(
                      color: Theme.of(context).cardColor,
                    ),
                  ),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
