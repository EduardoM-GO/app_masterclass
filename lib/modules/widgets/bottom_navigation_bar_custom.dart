import 'dart:async';

import 'package:flutter/material.dart';

class BottomNavigationParametro {
  final Widget icon;
  final String text;

  BottomNavigationParametro({required this.icon, required this.text});
}

class BottomNavigationBarCustom extends StatefulWidget {
  final TabController controller;
  final List<BottomNavigationParametro> opcoes;
  final List<GlobalKey> opcoesKeys;
  const BottomNavigationBarCustom(
      {Key? key,
      required this.controller,
      required this.opcoes,
      required this.opcoesKeys})
      : super(key: key);

  @override
  State<BottomNavigationBarCustom> createState() =>
      _BottomNavigationBarCustomState();
}

class _BottomNavigationBarCustomState extends State<BottomNavigationBarCustom> {
  double alturaMax = 0;
  @override
  void initState() {
    super.initState();
    List.generate(
      widget.opcoes.length,
      (index) => widget.opcoesKeys.add(GlobalKey()),
    );
  }

  //Obtem a localização da widget da opção selecionada
  Future<double> getPosicaoX(int index) async {
    await Future.delayed(const Duration(milliseconds: 100));
    if (widget.opcoesKeys[index].currentContext == null) return 0.0;
    final RenderBox renderBox = widget.opcoesKeys[index].currentContext!
        .findRenderObject() as RenderBox;
    final state = widget.opcoesKeys[index].currentContext!
        .findAncestorStateOfType<NavigatorState>();
    if (state != null) {
      //Pixel que não deve entra na posição do sombremento, usado para centralizar o sombremento
      const double pixelIgnorado = 9.5;

      return renderBox
              .localToGlobal(Offset.zero,
                  ancestor: state.context.findRenderObject())
              .dx -
          pixelIgnorado;
      //pixelIgnorado;
    } else {
      return 0.0;
    }
  }

  List<Widget> getOpcoes() {
    final List<Widget> opcoes = [];
    for (int i = 0; i < widget.opcoes.length; i++) {
      if (i > 0) {
        opcoes.add(
          const SizedBox(
            height: 50,
            child: VerticalDivider(
              thickness: 1,
            ),
          ),
        );
      }
      opcoes.add(
        InkWell(
          key: widget.opcoesKeys[i],
          onTap: () => widget.controller.index = i,
          child: SizedBox(
            width: 80,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                    alignment: Alignment.center,
                    height: 32,
                    child: widget.opcoes[i].icon),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  widget.opcoes[i].text,
                  style: Theme.of(context).textTheme.caption?.copyWith(
                      color: Theme.of(context).highlightColor,
                      fontWeight: FontWeight.normal),
                ),
              ],
            ),
          ),
        ),
      );
    }
    return opcoes;
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(19.0),
      child: Stack(
        children: [
          FutureBuilder<double>(
              future: getPosicaoX(widget.controller.index),
              builder: (context, snap) {
                if (!snap.hasData) {
                  return Container();
                }
                return AnimatedPositioned(
                  duration: const Duration(milliseconds: 200),
                  left: snap.data,
                  child: Container(
                    width: 60,
                    height: 32,
                    alignment: Alignment.center,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        color: Theme.of(context).cardColor),
                  ),
                );
              }),
          Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: getOpcoes()),
        ],
      ),
    );
  }
}
