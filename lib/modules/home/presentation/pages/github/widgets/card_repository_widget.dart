import 'package:app_masterclass/modules/home/domain/entities/repository_git.dart';
import 'package:app_masterclass/modules/home/widgets/acessar_codigo_fonte_widget.dart';
import 'package:flutter/material.dart';

class CardRepositoryWidget extends StatelessWidget {
  final RepositoryGit repository;

  const CardRepositoryWidget({Key? key, required this.repository})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              repository.nome,
              style: Theme.of(context)
                  .textTheme
                  .subtitle1
                  ?.copyWith(color: Theme.of(context).highlightColor),
            ),
            const SizedBox(
              height: 8.0,
            ),
            if (repository.descricao.isNotEmpty)
              Text(
                repository.descricao,
                style: Theme.of(context).textTheme.bodyText2?.copyWith(
                      color: Theme.of(context).colorScheme.onSurface,
                    ),
              ),
            const SizedBox(
              height: 8.0,
            ),
            Row(
              children: [
                AcessarCodigoFonteWidget(url: Uri.parse(repository.link)),
                Expanded(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: Text(
                      repository.linguagem,
                      style: Theme.of(context).textTheme.caption,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
