import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get_it/get_it.dart';

import '../../core/themes/cubit/theme_cubit.dart';

class AppBarCustom extends StatelessWidget with PreferredSizeWidget {
  final Widget? leading;
  final String titulo;
  final String subTitulo;
  const AppBarCustom(
      {Key? key,
      required this.titulo,
      this.subTitulo = 'Flutterando Masterclass',
      this.leading})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: leading != null
          ? Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: leading,
            )
          : null,
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            titulo,
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Theme.of(context).highlightColor),
          ),
          Text(
            subTitulo,
            style: Theme.of(context)
                .textTheme
                .caption
                ?.copyWith(color: Theme.of(context).highlightColor),
          )
        ],
      ),
      actions: [
        IconButton(
          onPressed: () =>
              GetIt.I.get<ThemeCubit>().changeTheme(context: context),
          icon: const Icon(FontAwesomeIcons.solidMoon),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
