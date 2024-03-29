import 'package:flutter/material.dart';

import '../../../../domain/entities/tecnologia.dart';

class CardTecnologiasWidget extends StatelessWidget {
  final Tecnologia tecnologia;

  const CardTecnologiasWidget({Key? key, required this.tecnologia})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.zero,
      child: SizedBox(
        height: 100,
        width: 94,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 13.0,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 28.0),
              child: Center(
                child: SizedBox(
                  height: 48,
                  width: 38,
                  child: tecnologia.urlLogo.isNotEmpty
                      ? Image.asset(
                          tecnologia.urlLogo,
                        )
                      : const FlutterLogo(),
                ),
              ),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Text(
              tecnologia.nome,
              style: Theme.of(context)
                  .textTheme
                  .caption
                  ?.copyWith(color: Theme.of(context).highlightColor),
            ),
            const SizedBox(
              height: 13.0,
            ),
          ],
        ),
      ),
    );
  }
}
