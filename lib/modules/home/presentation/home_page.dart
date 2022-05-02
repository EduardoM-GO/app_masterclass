import 'package:app_masterclass/modules/home/presentation/pages/sobre_dev/sobre_dev_page.dart';
import 'package:app_masterclass/modules/home/presentation/widgets/atividades_page.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController;
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
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
      body: TabBarView(controller: _tabController, children: [
        AtividadesPage(),
        AtividadesPage(),
        SobreDevPage(),
      ]),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  _tabController.index = 0;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 60,
                    height: 32,
                    decoration: _tabController.index == 0
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Theme.of(context).cardColor)
                        : null,
                    child: Image.asset(
                      'assets/logos/Icon feather-target.png',
                      width: 24,
                    ),
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
            const SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 1,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _tabController.index = 1;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 60,
                    height: 32,
                    decoration: _tabController.index == 1
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Theme.of(context).cardColor)
                        : null,
                    child: const Icon(
                      FontAwesomeIcons.github,
                      size: 24,
                    ),
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
            const SizedBox(
              height: 50,
              child: VerticalDivider(
                thickness: 1,
              ),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  _tabController.index = 2;
                });
              },
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    alignment: Alignment.center,
                    width: 60,
                    height: 32,
                    decoration: _tabController.index == 2
                        ? BoxDecoration(
                            borderRadius: BorderRadius.circular(20),
                            color: Theme.of(context).cardColor)
                        : null,
                    child: const Icon(
                      FontAwesomeIcons.userLarge,
                      size: 24,
                    ),
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
