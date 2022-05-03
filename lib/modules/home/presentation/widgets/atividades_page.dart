import 'package:app_masterclass/modules/home/domain/entities/atividade.dart';
import 'package:app_masterclass/modules/home/domain/user_case/get_atividades.dart';
import 'package:app_masterclass/modules/home/presentation/widgets/card_widget.dart';
import 'package:flutter/material.dart';

class AtividadesPage extends StatelessWidget {
  const AtividadesPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<Atividade>>(
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
        });
  }
}
