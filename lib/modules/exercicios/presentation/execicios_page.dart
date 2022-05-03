import 'package:app_masterclass/main.dart';
import 'package:app_masterclass/modules/home/domain/entities/exercicio.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ExeciciosPage extends StatelessWidget {
  final String topico;
  final List<Exercicio> exercicios;
  const ExeciciosPage(
      {Key? key, required this.topico, required this.exercicios})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        automaticallyImplyLeading: true,
        titleSpacing: 50,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Text(
              topico,
              style: Theme.of(context)
                  .textTheme
                  .headline6
                  ?.copyWith(color: Theme.of(context).highlightColor),
            ),
            Text(
              'Flutterando Masterclass',
              style: Theme.of(context)
                  .textTheme
                  .caption
                  ?.copyWith(color: Theme.of(context).highlightColor),
            )
          ],
        ),
        actions: [
          IconButton(
            onPressed: () => MainWidget.of(context)?.changeTheme(),
            icon: const Icon(FontAwesomeIcons.solidMoon),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 26.0),
        child: ListView.builder(
          itemCount: exercicios.length,
          itemBuilder: (context, index) => Card(
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
    );
  }
}
