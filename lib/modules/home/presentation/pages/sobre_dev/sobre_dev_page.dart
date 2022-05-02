import 'package:app_masterclass/modules/home/presentation/pages/sobre_dev/domian/entities/dev.dart';
import 'package:app_masterclass/modules/home/presentation/pages/sobre_dev/domian/user_case/get_dev_info.dart';
import 'package:app_masterclass/modules/home/presentation/pages/sobre_dev/widgets/card_tecnologias_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SobreDevPage extends StatelessWidget {
  const SobreDevPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<Dev>(
      future: GetDevInfo().call(),
      builder: (context, snap) {
        if (!snap.hasData) {
          return const CircularProgressIndicator();
        }
        return Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Card(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(
                    height: 8.0,
                  ),
                  Container(
                    height: 116,
                    width: 116,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 5,
                        color: Theme.of(context).scaffoldBackgroundColor,
                      ),
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: Image.network(snap.data!.urlFoto).image,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 13.0,
                  ),
                  Text(
                    snap.data!.nome,
                    style: Theme.of(context).textTheme.subtitle1,
                  ),
                  const SizedBox(
                    height: 13.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 23),
                    child: Text(
                      snap.data!.descricao,
                      style: Theme.of(context).textTheme.caption?.copyWith(
                          color: Theme.of(context).colorScheme.onSurface),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(
                    height: 45.0,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.whatsapp,
                          size: 28,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.githubAlt,
                          size: 28,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.instagram,
                          size: 28,
                        ),
                      ),
                      const SizedBox(
                        width: 10.0,
                      ),
                      IconButton(
                        onPressed: () {},
                        icon: const FaIcon(
                          FontAwesomeIcons.facebookF,
                          size: 28,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 26.0,
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            SizedBox(
              width: MediaQuery.of(context).size.width,
              height: 100,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: snap.data!.favoritas.length,
                itemBuilder: (context, index) => CardTecnologiasWidget(
                  tecnologia: snap.data!.favoritas[index],
                ),
              ),
            )
          ],
        );
      },
    );
  }
}
