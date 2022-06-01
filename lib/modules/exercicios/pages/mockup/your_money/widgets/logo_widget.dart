import 'package:flutter/material.dart';

class LogoWidget extends StatelessWidget {
  final Color cor;
  const LogoWidget({Key? key, required this.cor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisSize: MainAxisSize.min,
      children: [
        Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(shape: BoxShape.circle, color: cor),
            ),
            const SizedBox(
              height: 8.0,
            ),
            Container(
              height: 44,
              width: 44,
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.only(
                    bottomLeft: Radius.circular(100),
                  ),
                  color: cor),
            )
          ],
        ),
        const SizedBox(
          width: 8.0,
        ),
        Container(
          height: 96,
          width: 44,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topRight: Radius.circular(100),
              bottomLeft: Radius.circular(100),
            ),
            color: cor,
          ),
        ),
      ],
    );
  }
}
