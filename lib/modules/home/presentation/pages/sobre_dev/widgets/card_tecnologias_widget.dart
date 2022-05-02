import 'package:app_masterclass/modules/home/presentation/pages/sobre_dev/domian/entities/tecnologia.dart';
import 'package:flutter/material.dart';

class CardTecnologiasWidget extends StatelessWidget {
  final Tecnologia tecnologia;

  const CardTecnologiasWidget({Key? key, required this.tecnologia})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          const SizedBox(
            height: 13.0,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28.0),
            child: SizedBox(
              height: 48,
              width: 38,
              child: tecnologia.urlLogo.isNotEmpty
                  ? Image.network(
                      tecnologia.urlLogo,
                    )
                  : const FlutterLogo(),
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
    );
  }
}
