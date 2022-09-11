import 'package:app_masterclass/modules/home/presentation/pages/sobre_dev/cubit/sobre_dev_cubit.dart';
import 'package:app_masterclass/modules/home/presentation/pages/sobre_dev/widgets/dev_info_widget.dart';
import 'package:app_masterclass/modules/widgets/erro_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get_it/get_it.dart';

import '../../../domain/entities/dev.dart';

class SobreDevPage extends StatefulWidget {
  const SobreDevPage({Key? key}) : super(key: key);

  @override
  State<SobreDevPage> createState() => _SobreDevPageState();
}

class _SobreDevPageState extends State<SobreDevPage> {
  late final SobreDevCubit bloc;
  @override
  void initState() {
    super.initState();
    bloc = GetIt.I.get<SobreDevCubit>();
    bloc.getDev();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SobreDevCubit, SobreDevState>(
      bloc: bloc,
      builder: (context, state) {
        if (state is SobreDevLoadingState) {
          return const CircularProgressIndicator();
        }
        if (state is SobreDevFailureState) {
          return Center(
            child: ErroWidget(
              failure: state.failure,
              recarregar: () => GetIt.I.get<SobreDevCubit>().getDev(),
            ),
          );
        }
        late final Dev dev;
        if (state is SobreDevSuccessState) {
          dev = state.dev;
        } else {
          dev = Dev.empty();
        }
        return DevInfoWidget(dev: dev);
      },
    );
  }
}
