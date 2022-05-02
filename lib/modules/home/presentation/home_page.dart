import 'package:app_masterclass/modules/home/domain/entities/atividade.dart';
import 'package:app_masterclass/modules/home/domain/user_case/get_atividades.dart';
import 'package:app_masterclass/modules/home/presentation/widgets/card_widget.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leadingWidth: 0,
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Image.asset('assets/logos/logo.png', width: 48),
          title: Text(
            'Atividades',
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Theme.of(context).highlightColor),
          ),
          subtitle: Text('Flutterando Masterclass',
              style: Theme.of(context)
                  .textTheme
                  .caption
                  ?.copyWith(color: Theme.of(context).highlightColor)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: FutureBuilder<List<Atividade>>(
            future: GetAtividade().call(),
            builder: (context, snap) {
              if (snap.hasData) {
                return ListView.builder(
                  itemCount: snap.data?.length,
                  itemBuilder: (context, index) => CardWidget(
                    atividade: snap.data![index],
                  ),
                );
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            }),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/logos/Icon feather-target.png',
                    width: 24,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Atividades',
                    style: Theme.of(context).textTheme.caption?.copyWith(
                        color: Theme.of(context).highlightColor,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 2,
              color: Theme.of(context).colorScheme.surface,
            ),
            InkWell(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    FontAwesomeIcons.github,
                    size: 24,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Repositórios',
                    style: Theme.of(context).textTheme.caption?.copyWith(
                        color: Theme.of(context).highlightColor,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
            Container(
              height: 50,
              width: 2,
              color: Theme.of(context).colorScheme.surface,
            ),
            InkWell(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Icon(
                    FontAwesomeIcons.userLarge,
                    size: 24,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Sobre o dev',
                    style: Theme.of(context).textTheme.caption?.copyWith(
                        color: Theme.of(context).highlightColor,
                        fontWeight: FontWeight.normal),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
