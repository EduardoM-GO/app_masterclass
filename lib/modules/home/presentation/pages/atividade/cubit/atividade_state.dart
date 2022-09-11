part of 'atividade_cubit.dart';

@immutable
abstract class AtividadeState {}

class AtividadeInitialState extends AtividadeState {}

class AtividadeLoadingState extends AtividadeState {}

class AtividadeSuccessState extends AtividadeState {
  final List<Atividade> atividades;

  AtividadeSuccessState(this.atividades);
}

class AtividadeFailureState extends AtividadeState {
  final Failure failure;

  AtividadeFailureState(this.failure);
}
