import 'package:app_masterclass/modules/home/presentation/pages/atividade/atividades_page.dart';
import 'package:app_masterclass/modules/home/presentation/pages/sobre_dev/sobre_dev_page.dart';
import 'package:app_masterclass/modules/widgets/app_bar_custom.dart';
import 'package:app_masterclass/modules/widgets/bottom_navigation_bar_custom.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
  late final TabController _tabController;
  final List<GlobalKey> opcoesKeys = [];
  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    List.generate(
        _tabController.length, (index) => opcoesKeys.add(GlobalKey()));
    _tabController.addListener(() {
      setState(() {});
    });
  }

  String getTitle(int index) {
    switch (index) {
      case 0:
        return 'Atividades';
      case 1:
        return 'Repositórios';
      default:
        return 'Sobre o dev';
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarCustom(
        leading: Image.asset('assets/logos/logo.png', width: 48),
        titulo: getTitle(_tabController.index),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: TabBarView(
          controller: _tabController,
          children: const [
            AtividadesPage(),
            Center(
              child: CircularProgressIndicator(),
            ),
            SobreDevPage(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBarCustom(
        controller: _tabController,
        opcoesKeys: opcoesKeys,
        opcoes: [
          BottomNavigationParametro(
              icon: Image.asset(
                'assets/logos/Icon feather-target.png',
                width: 24,
                color: Theme.of(context).iconTheme.color,
              ),
              text: getTitle(0)),
          BottomNavigationParametro(
              icon: const Icon(
                FontAwesomeIcons.github,
              ),
              text: getTitle(1)),
          BottomNavigationParametro(
              icon: const Icon(
                FontAwesomeIcons.userLarge,
              ),
              text: getTitle(2)),
        ],
      ),
    );
  }
}
