import 'package:flutter/material.dart';

import '../../../../domain/entities/habilidade.dart';

class HabilidadeInfoWidget extends StatefulWidget {
  final Habilidade habilidade;
  const HabilidadeInfoWidget({Key? key, required this.habilidade})
      : super(key: key);

  @override
  _HabilidadeInfoWidgetState createState() => _HabilidadeInfoWidgetState();
}

class _HabilidadeInfoWidgetState extends State<HabilidadeInfoWidget>
    with TickerProviderStateMixin {
  late AnimationController _controller;
  late Animation<double> _animation;

  @override
  void initState() {
    super.initState();
    _controller =
        AnimationController(vsync: this, duration: const Duration(seconds: 2));
    _animation = Tween<double>(
      begin: 0,
      end: widget.habilidade.percentualCompetencia / 100,
    ).animate(CurvedAnimation(parent: _controller, curve: Curves.ease));

    _controller.addListener(() {
      setState(() {});
    });
    _controller.forward();
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            widget.habilidade.nome,
            style: Theme.of(context)
                .textTheme
                .caption
                ?.copyWith(color: Theme.of(context).colorScheme.onSurface),
          ),
        ),
        Expanded(
          flex: 2,
          child: Container(
            height: 10.0,
            decoration: BoxDecoration(
              color: Theme.of(context).scaffoldBackgroundColor,
              borderRadius: const BorderRadius.all(Radius.circular(10.0)),
            ),
            clipBehavior: Clip.antiAlias,
            child: FractionallySizedBox(
              alignment: Alignment.centerLeft,
              widthFactor: _animation.value,
              heightFactor: 1.0,
              child: Container(
                decoration: BoxDecoration(
                  color: Theme.of(context).colorScheme.primary,
                  borderRadius: const BorderRadius.all(Radius.circular(10.0)),
                ),
                clipBehavior: Clip.antiAlias,
              ),
            ),
          ),
        )
      ],
    );
  }
}
