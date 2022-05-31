import 'dart:io';

import 'package:app_masterclass/modules/home/presentation/pages/sobre_dev/domian/entities/dev.dart';
import 'package:app_masterclass/modules/home/presentation/pages/sobre_dev/domian/user_case/get_dev_info.dart';
import 'package:app_masterclass/modules/home/presentation/pages/sobre_dev/widgets/card_habilidades_widget.dart';
import 'package:app_masterclass/modules/home/presentation/pages/sobre_dev/widgets/card_tecnologias_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

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

        return SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 14.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Card(
                  margin: EdgeInsets.zero,
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
                            image: Image.asset(snap.data!.urlFoto).image,
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
                            onPressed: () {
                 
                              launchUrl(
                                Platform.isAndroid
                                    ? Uri(
                                        scheme: 'whatsapp',
                                        host: 'send',
                                        queryParameters: {
                                            'phone': snap.data!.whatsapp
                                          })
                                    : Uri(
                                        scheme: 'https',
                                        host: 'api.whatsapp.com',
                                        path: 'send',
                                        queryParameters: {
                                            'phone': snap.data!.whatsapp
                                          }),
                              );
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.whatsapp,
                              size: 28,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          IconButton(
                            onPressed: () {
                              launchUrl(
                                Uri(
                                  scheme: 'https',
                                  host: 'github.com',
                                  path: snap.data!.gitHub,
                                ),
                              );
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.githubAlt,
                              size: 28,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          IconButton(
                            onPressed: () {
                              launchUrl(Uri(
                                scheme: 'https',
                                host: 'www.instagram.com',
                                path: snap.data!.instagram,
                              ));
                            },
                            icon: const FaIcon(
                              FontAwesomeIcons.instagram,
                              size: 28,
                            ),
                          ),
                          const SizedBox(
                            width: 10.0,
                          ),
                          IconButton(
                            onPressed: () {
                              launchUrl(Uri(
                                scheme: 'https',
                                host: 'www.facebook.com',
                                path: snap.data!.facebook,
                              ));
                            },
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
                Text(
                  'Tecnologias Favoritas',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      ?.copyWith(color: Theme.of(context).highlightColor),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: snap.data!.favoritas.length,
                    itemBuilder: (context, index) => Padding(
                      padding: const EdgeInsets.only(right: 20.0),
                      child: CardTecnologiasWidget(
                        tecnologia: snap.data!.favoritas[index],
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  height: 20.0,
                ),
                Text(
                  'Habilidades e Competências',
                  style: Theme.of(context)
                      .textTheme
                      .subtitle2
                      ?.copyWith(color: Theme.of(context).highlightColor),
                ),
                const SizedBox(
                  height: 8.0,
                ),
                CardHabilidadesWidget(
                  habilidades: snap.data!.habilidades,
                )
              ],
            ),
          ),
        );
      },
    );
  }
}
