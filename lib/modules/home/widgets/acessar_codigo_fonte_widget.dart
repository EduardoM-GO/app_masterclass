import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class AcessarCodigoFonteWidget extends StatelessWidget {
  final Uri url;
  const AcessarCodigoFonteWidget({Key? key, required this.url})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => launchUrl(url),
      child: Row(
        children: [
          Icon(
            FontAwesomeIcons.github,
            color: Theme.of(context).highlightColor,
            size: 20,
          ),
          const SizedBox(
            width: 13.0,
          ),
          Text(
            'Acessar código fonte',
            style: Theme.of(context)
                .textTheme
                .subtitle1
                ?.copyWith(color: Theme.of(context).highlightColor),
          ),
        ],
      ),
    );
  }
}
