import 'package:app_masterclass/modules/home/domain/entities/atividade.dart';
import 'package:app_masterclass/modules/home/presentation/pages/atividade/cubit/atividade_cubit.dart';
import 'package:app_masterclass/modules/home/presentation/pages/atividade/widgets/card_widget.dart';
import 'package:app_masterclass/modules/widgets/erro_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

class AtividadesPage extends StatefulWidget {
  const AtividadesPage({Key? key}) : super(key: key);

  @override
  State<AtividadesPage> createState() => _AtividadesPageState();
}

class _AtividadesPageState extends State<AtividadesPage> {
  late final AtividadeCubit bloc;
  @override
  void initState() {
    super.initState();
    bloc = GetIt.I.get<AtividadeCubit>();
    bloc.getAtividades();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<AtividadeCubit, AtividadeState>(
      bloc: bloc,
      builder: (context, state) {
        if (state is AtividadeLoadingState) {
          return const Center(child: CircularProgressIndicator());
        } else if (state is AtividadeFailureState) {
          return Center(
              child: ErroWidget(
                  recarregar: () => bloc.getAtividades(),
                  failure: state.failure));
        }
        late final List<Atividade> atividades;
        if (state is AtividadeSuccessState) {
          atividades = state.atividades;
        } else {
          atividades = [];
        }

        return ListView.builder(
          itemCount: atividades.length,
          itemBuilder: (context, index) => CardWidget(
            atividade: atividades[index],
          ),
        );
      },
    );
  }
}
