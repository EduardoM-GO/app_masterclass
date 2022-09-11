import 'package:app_masterclass/core/error/failure.dart';
import 'package:app_masterclass/modules/home/domain/entities/dev.dart';
import 'package:app_masterclass/modules/home/domain/user_case/get_info_dev_use_case.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'sobre_dev_state.dart';

class SobreDevCubit extends Cubit<SobreDevState> {
  final GetInfoDevUseCase _useCase;
  SobreDevCubit(this._useCase) : super(SobreDevInitialState());

  Future<void> getDev() async {
    emit(SobreDevLoadingState());
    final result = await _useCase();
    result.fold(
      (l) => emit(SobreDevFailureState(failure: l)),
      (r) => emit(SobreDevSuccessState(dev: r)),
    );
  }
}
