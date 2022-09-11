import 'package:app_masterclass/core/error/failure.dart';
import 'package:app_masterclass/modules/home/domain/entities/atividade.dart';
import 'package:app_masterclass/modules/home/domain/user_case/get_atividades_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'atividade_state.dart';

class AtividadeCubit extends Cubit<AtividadeState> {
  final GetAtividadesUseCase _useCase;
  AtividadeCubit(this._useCase) : super(AtividadeInitialState());

  Future<void> getAtividades() async {
    emit(AtividadeLoadingState());
    final result = await _useCase();
    result.fold(
      (l) => emit(AtividadeFailureState(l)),
      (r) => emit(AtividadeSuccessState(r)),
    );
  }
}
