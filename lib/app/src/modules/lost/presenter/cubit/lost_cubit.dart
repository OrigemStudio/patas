import '../../../../../../patas_exports.dart';

class LostCubit extends SmartCubit<LostEntity> {
  LostCubit(this._getLostsUseCase, this._updateLostUseCase)
      : super(InitState<LostEntity>(const LostEntity()));

  final IGetLostsUseCase _getLostsUseCase;
  final IUpdateLostUseCase _updateLostUseCase;

  Future<void> init() async {
    setSubmit(true);
    final result = await _getLostsUseCase.call(
        tutorId: 'f45d4148-4860-46b4-b76f-8cc09939c278');
    result.fold((error) => setError(error),
        (adoptions) => setSuccess(value: adoptions));
  }

  Future<void> updateLost(PetEntity petEntity, bool isLost) async {
    setSubmit(true);
    final result = await _updateLostUseCase.call(
        updateLostEntity:
            UpdateLostEntity(petId: petEntity.id, isLost: isLost));
    result.fold((error) => setError(error),
        (success) => setSuccess(value: state.value));
  }
}
