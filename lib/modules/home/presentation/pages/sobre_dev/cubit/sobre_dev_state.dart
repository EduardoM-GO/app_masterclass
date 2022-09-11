part of 'sobre_dev_cubit.dart';

@immutable
abstract class SobreDevState {}

class SobreDevInitialState extends SobreDevState {}

class SobreDevLoadingState extends SobreDevState {}

class SobreDevSuccessState extends SobreDevState {
  final Dev dev;
  SobreDevSuccessState({
    required this.dev,
  });
}

class SobreDevFailureState extends SobreDevState {
  final Failure failure;
  SobreDevFailureState({
    required this.failure,
  });
}
