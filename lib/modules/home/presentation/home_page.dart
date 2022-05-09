import 'package:app_masterclass/main.dart';
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
      appBar: AppBar(
        leadingWidth: 0,
        title: ListTile(
          contentPadding: EdgeInsets.zero,
          leading: Image.asset('assets/logos/logo.png', width: 48),
          title: Text(
            getTitle(_tabController.index),
            style: Theme.of(context)
                .textTheme
                .headline6
                ?.copyWith(color: Theme.of(context).highlightColor),
          ),
          subtitle: Text(
            'Flutterando Masterclass',
            style: Theme.of(context)
                .textTheme
                .caption
                ?.copyWith(color: Theme.of(context).highlightColor),
          ),
          trailing: IconButton(
            onPressed: () => MainWidget.of(context)?.changeTheme(),
            icon: const Icon(FontAwesomeIcons.solidMoon),
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16.0),
        child: TabBarView(controller: _tabController, children: const [
          AtividadesPage(),
          Center(
            child: CircularProgressIndicator(),
          ),
          SobreDevPage(),
        ]),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(19.0),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 200),
              left: (_tabController.index == 0)
                  ? MediaQuery.of(context).size.width * 0.052
                  : (_tabController.index == 1)
                      ? MediaQuery.of(context).size.width * 0.364
                      : MediaQuery.of(context).size.width * 0.687,
              child: Container(
                alignment: Alignment.center,
                width: 60,
                height: 32,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    color: Theme.of(context).cardColor),
              ),
            ),
            Row(
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
                        child: Image.asset(
                          'assets/logos/Icon feather-target.png',
                          width: 24,
                          color: Theme.of(context).iconTheme.color,
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
          ],
        ),
      ),
    );
  }
}
